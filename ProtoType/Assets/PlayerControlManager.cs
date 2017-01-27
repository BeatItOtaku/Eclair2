using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// PlayerControlManagerに書かれることは、エクレアの動作全般。アニメーションも含む。
/// ・プレイヤーステイト
/// ・Move(エクレアの移動）
/// ・Rotate（エクレアの回転）
/// ・Fire（通常攻撃）
/// ・Bolt（ボルト射出）
/// ・Avoid（回避）
/// ・Eto（電撃移動）
/// ・ダメージとHPと無敵と死亡
/// </summary>
/// 

public class PlayerControlManager : MonoBehaviour {

	//汎用系
	public GameObject player;
	public GameObject muzzle;

	public static bool EclairImmobile = false; //trueでエクレアが移動、回転ができなくなる。
	public static bool EclairStopping = false; //trueでエクレアのアニメーション含む全ての動作ができなくなる。

	//Move

	private float h;
	private float v;
	private float distToGround;

	private int hFloat;
	private int vFloat;
	private int groundedBool;

	private bool isMoving = false; // trueでエクレアが動いている、falseで止まっている。




	//Rotate

	public Transform cameraTransform;   // 操作するカメラ

	private float turnSmoothing = 3.0f;
	private float finalTurnSmoothing;


	private Vector3 lastDirection;
	private Vector3 targetDirection;


	//Fire
	//Fireに関しては、別のFireManagerに詳細が記述されている。

	public static bool isFire = true; //falseでエクレアは通常攻撃ができなくなる。
	private FireManager fm;


	//Bolt

	public GameObject bolt;
	private GameObject lastShot = null; //最後に打ち出したボルト

	public static bool isBolt = true; //falseでエクレアはボルトが撃てなくなる。
	public bool usePhysics = false;
	private bool boltLaunch; //ボルトが着弾したかどうか。

	private Vector3 screenMiddle; //画面の中央

	const float DefaultShotDistance = 10;
	public float shotIntervalMin = 1F;
	public float boltTime = 0;
	private float shotInterval = 0;
	public float force = 10;
	public float maxDistance = 24;//24メートル以上離れてる対象にはロックオンしない

	private Quaternion boltQuaternionOffset;

	List<KeyValuePair<float, GameObject>> targetList = new List<KeyValuePair<float, GameObject>>();
	public string boltHeadName = "pCylinder2";
	private int cursor = 0;

	public CrossHairController crossHair;
	public CameraController camControl;


	//Avoid

	public static bool isAvoid = true; //falseでエクレアは回避ができなくなる。

	//Eto

	public static bool isEto = true; //falseでエクレアはETOができなくなる。
	public static bool etoOn = false;
	public GameObject eto;
	private GameObject eto_;

	//Damage


	//HP


	//無敵


	//死亡


	//アニメーション
	private Animator anim;


	//エクレアのプレイヤーステイト
	public enum PlayerStates
	{
		Idle, //通常、歩行、回転
		Fire, 
		Bolt,
		Avoid,
		Eto,
		Damaging,
		Death
	}
	public PlayerStates playerState_ = PlayerStates.Idle;

	void Awake(){

		anim= player.GetComponent<Animator> ();

		//アニメーション関係
		//Move
		hFloat = Animator.StringToHash("H");
		vFloat = Animator.StringToHash("V");
		groundedBool = Animator.StringToHash("Grounded");
		distToGround = GetComponent<Collider>().bounds.extents.y;

		//Fire
		//fm.GetComponent<FireManager>();
	
	}

	//設置判定
	bool IsGrounded() 
	{
		return Physics.Raycast(transform.position + new Vector3(0,0.1f,0), -Vector3.up,  0.15f);
	}


	/// <summary>
	/// ロックオン、ボルト射出、SBT、エトワールが終了した時に呼ばれるメソッド
	/// </summary>
	public void Idle ()
	{
		player.SetActive (true);
		Debug.Log (playerState_.ToString ());
		if (playerState_ == PlayerStates.Eto) {
			etoOn = false;
			CameraController.lookAt = camControl.player;
			eto.SetActive (false);
		}
		playerState_ = PlayerStates.Idle;
		player.GetComponent<LockOn> ().endLockOn ();
		crossHair.isLockOn = false;
		camControl.StopLockOn ();
	}


	// Use this for initialization
	void Start () {
		
		//bolt
		screenMiddle = new Vector3 (Screen.width / 2, Screen.height / 2, 0);
	}
	
	// Update is called once per frame
	void Update () {
		//Move
		h = Input.GetAxis("Horizontal"); //左右方向の移動
		v = Input.GetAxis("Vertical"); //前後方向の移動
		isMoving = Mathf.Abs(h) > 0.1 || Mathf.Abs(v) > 0.1;

		//Bolt
		BoltManagement();
		//発射間隔を設定する
		shotInterval += Time.deltaTime;

		//Eto
		EtoManagement();

		//Avoid
		AvoidManagement();

		//設置判定
		if (IsGrounded())
		{
			anim.SetBool ("NewGrounded", true);
		} else {
			anim.SetBool ("NewGrounded", false);
		}

		//Fire
		if (isFire) 
		{
			//fm.FireManagement ();
		}
	}

	void FixedUpdate()
	{
		MoveManagement (h,v);
	}

	//Move
	void MoveManagement(float horizontal, float vertical)
	{
		Rotating (horizontal, vertical);
		if (isMoving && EclairImmobile == false && EclairStopping == false) {
			anim.SetBool ("Run", true);
			transform.position += transform.forward * Time.deltaTime * 5;
		} else {
			anim.SetBool ("Run", false);
			transform.position += transform.forward * Time.deltaTime * 0;
		}
	}


	//Rotate
	Vector3 Rotating(float horizontal, float vertical)
	{
		Vector3 forward = cameraTransform.TransformDirection (Vector3.forward);
			forward.y = 0.0f;
		forward = forward.normalized;

		Vector3 right = new Vector3 (forward.z, 0, -forward.x);

		Vector3 targetDirection;

		float finalTurnSmoothing;

			targetDirection = forward * vertical + right * horizontal;
			finalTurnSmoothing = turnSmoothing;

		if ((isMoving && targetDirection != Vector3.zero) ){
			Quaternion targetRotation = Quaternion.LookRotation (targetDirection, Vector3.up);

			Quaternion newRotation = Quaternion.Slerp (GetComponent<Rigidbody> ().rotation, targetRotation, finalTurnSmoothing * Time.deltaTime*20);
			GetComponent<Rigidbody> ().MoveRotation (newRotation);
			//lastDirection = targetDirection;
		}
		if (!(Mathf.Abs (h) > 0.9 || Mathf.Abs (v) > 0.9)) {
			Repositioning ();
		}

		return targetDirection;

	}

	private void Repositioning()
	{
		
		Vector3 repositioning = lastDirection;
		if(repositioning != Vector3.zero)
		{
			repositioning.y = 0;
			Quaternion targetRotation = Quaternion.LookRotation (repositioning, Vector3.up);
			Quaternion newRotation = Quaternion.Slerp(GetComponent<Rigidbody>().rotation, targetRotation, turnSmoothing * Time.deltaTime);
			GetComponent<Rigidbody>().MoveRotation (newRotation);
		}
	}


	//Bolt

	void BoltManagement()
	{
		if (isBolt) {	
			if (Input.GetButtonDown ("LaunchBolt")) {
				playerState_ = PlayerStates.Bolt;
				Ray ray = Camera.main.ScreenPointToRay (screenMiddle);
				RaycastHit hit;
				Vector3 hitPosition;
				Quaternion hitQuaternion = Quaternion.Euler (0, 0, 0);
				int layerMask = ~(1 << 8);//レイヤー8(Player)を除く全部
				Debug.Log (Physics.Raycast (ray, out hit, layerMask));

				if (Physics.Raycast (ray, out hit, layerMask)) {
					hitPosition = hit.point; //ボルトの着弾点の位置
					hitQuaternion = Quaternion.LookRotation (hit.normal);//ボルトの着弾面の法線方向
				} else {
					hitPosition = Camera.main.transform.position + (Camera.main.transform.forward * DefaultShotDistance);
				}
				if (LaunchBolt (hitPosition, hitQuaternion)) {
					//audioSource.PlayOneShot (boltLaunchSound);
				}

				GameObject bolt = GameObject.FindGameObjectWithTag ("Bolt");
				bolt =startLockOn ();
				if (bolt != null) {
					onLockOnSwitched (bolt);
				}
			}
		}
	}

	public bool LaunchBolt(Vector3 target, Quaternion targetQuaternion){

		if (lastShot != null && shotInterval < shotIntervalMin) {
			return false;//前回のLaunchBoltからあんまり時間経ってない時は何もしない
				} else{
			shotInterval = 0;
	}
		if (lastShot != null) Destroy(lastShot);//直前のShotを消す

		Vector3 playerToTarget = target - muzzle.transform.position;//ボルトの着弾点とエクレアを結ぶベクトル

		Ray pointRay = Camera.main.ScreenPointToRay(Input.mousePosition);
		transform.rotation = Quaternion.LookRotation(pointRay.direction);//マウスポインタがある方向にエクレアが回転
		transform.rotation = new Quaternion (0, transform.rotation.y, 0, transform.rotation.w);//回転をエクレアがいる平面に補正

		playerToTarget.Normalize ();
		GameObject go = (GameObject)Instantiate (bolt, muzzle.transform.position, Quaternion.LookRotation(pointRay.direction/*playerToTarget*/) /* boltQuaternionOffset*/);
		boltLaunch = true;
		boltTime = 0;
		//if (usePhysics)
		//{
			//go.GetComponent<Rigidbody>().velocity = player.GetComponent<Rigidbody>().velocity;
			//go.GetComponent<Rigidbody>().AddForce(pointRay.direction/*playerToTarget*/ * force, ForceMode.VelocityChange); //ボルトが放物線を描く
        //}
        go.GetComponent<LinearMovement>().Direction = playerToTarget;  //直線移動できる
		go.GetComponent<BoltScript> ().Target = target;
        go.GetComponent<BoltScript>().TargetQuaternion = targetQuaternion;

        lastShot = go;//直前のShotとして指定
        return true;
	}

	
	
	void onLockOnSwitched (GameObject target)
	{
		if (target != null) {
			crossHair.target = target.transform.position;
			crossHair.isLockOn = true;
			camControl.StartLockOn (target);
		}
	}

			public GameObject getCurrentTarget(){
		if (cursor == -1)
			return null;
		else
			return targetList [cursor].Value;
	}

	public GameObject startLockOn(){
		foreach (GameObject go in GameObject.FindGameObjectsWithTag ("Bolt") ) {
			if (go != null) {
                if (go.GetComponent<BoltScript>().isLanded)
                {
                    //float distance = Vector3.Distance (player.transform.position, go.transform.position);
                    /*if (distance > maxDistance)
                        continue;//遠すぎたらtargetListに追加することなくforの1ループをおわる*/

				int layerMask = 0;
				/*layerMask += 1 << 8;//Player
                    //layerMask += 1 << 9;//Bolt
                    layerMask += 1 << 13;//Boss
                    layerMask += 1 << 14;//Enemy
                    layerMask = ~layerMask;//最後に論理否定することにより、上記のLayer以外のすべてのレイヤーを指し示すことになる*/
				layerMask += (1 << 0) + (1 << 9);//DefaultとBolt

				Ray toTargetRay = new Ray(Camera.main.transform.position, go.transform.Find(boltHeadName).position - Camera.main.transform.position);
				RaycastHit hit;
					if (Physics.Raycast (toTargetRay, out hit, maxDistance, layerMask)) {
						if (hit.collider.tag == "Bolt")
							targetList.Add (new KeyValuePair<float, GameObject> (getAnglularDistance (go), go));
					}
				}
				}
				}
				targetList.Sort (CompareKeyValuePair);
				cursor = 0;
				if (targetList.Count == 0)
				{
					endLockOn();
					return null;
				}
				else return targetList[cursor].Value;
				}

				public void endLockOn(){
					cursor = -1;
					targetList.Clear();
					return;
				}

				public GameObject Switch(){
					cursor++;
					if (cursor >= targetList.Count) cursor = 0;
					return targetList [cursor].Value;
				}

				// 二つのKeyValuePair<string, int>を比較するためのメソッド
				static int CompareKeyValuePair(KeyValuePair<float, GameObject> x, KeyValuePair<float, GameObject> y)
				{
					// Keyで比較した結果を返す
					return (int)((x.Key - y.Key) * 100);
				}

				private float getAnglularDistance(GameObject target){
					Vector3 camera = Camera.main.transform.rotation * Vector3.forward;
					Vector3 toTarget = target.transform.position - player.transform.position;

					camera.y = 0;
					toTarget.y = 0;

					return Vector3.Angle (camera, toTarget);
				}

	//Avoid
	void AvoidManagement(){
		if(isAvoid){		
			if(Input.GetButtonDown("Avoid")){
							playerState_ = PlayerStates.Avoid;
				if (isMoving) {
					
				} else {
					
				}

			}
		}
	}


	//Eto
	void EtoManagement(){
		if (isEto) {				
				if (Input.GetButtonDown ("Etoile")) {
								if (playerState_ == PlayerStates.Bolt) {
									playerState_ = PlayerStates.Eto;
								        etoOn = true;
										//audioSource.PlayOneShot (etoileSound);				
										eto_ = eto;
										eto_.transform.position = player.transform.position;
										eto.SetActive (true);
										GameObject lockonTarget = getCurrentTarget ();
				                        endLockOn ();//ロックオン状態終了
										//EtoScript.target = lockonTarget;
						player.SetActive (false);
									}
							}
				
			}
		}
		
				public void startEtoile(GameObject go){
					//target = go;
				}


	//Damage&HP
	void DamageManagement(){
		playerState_ = PlayerStates.Damaging;
	}


	//Death
	void DeathManagement(){
		playerState_ = PlayerStates.Death;

	}

}
