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
/// ・Jump（ジャンプ）
/// ・ダメージとHPと無敵と死亡
/// </summary>
/// 

public class PlayerControlManager : MonoBehaviour {

	//汎用系
	public GameObject player;
	public GameObject muzzle;

	public static bool eclairImmobile = false; //trueでエクレアが移動、回転ができなくなる。
	public static bool eclairStopping = false; //trueでエクレアのアニメーション含む全ての動作ができなくなる。

	//Move
	private float speed;
	private float h;
	private float v;
	private float distToGround;

	private int hFloat;
	private int vFloat;
	private int groundedBool;

	private bool isMoving = false; // trueでエクレアが動いている、falseで止まっている。
	private bool runAnim;


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
	private float shotInterval = 0;
	public float force = 100;
	public float maxDistance = 24;//24メートル以上離れてる対象にはロックオンしない

	private Quaternion boltQuaternionOffset;

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


	//Jump
	public float jumpHeight = 5.0f;


	//Damage


	//HP
	public HPGaugeController HPGauge;

	private int hp_ = MaxHP;
	public int HP{
		get{
			return hp_;
		}
		set{
			hp_ = value;
			HPGauge.currentHP = value;
		}
	}
	const int MaxHP = 100;

	//無敵
	private float mutekiTime = 2.0f;
	private float mutekiTimeCursor = 0;

	private bool isMuteki = false;//無敵かどうか

	//死亡
	private bool death = false;//死んだかどうか

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
		Jump,
		Damaging,
		Death
	}
	public PlayerStates playerState_ = PlayerStates.Idle;

	void Awake(){

			//アニメーション関係
			anim = player.GetComponent<Animator> ();

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
	/// ボルト射出、エトワールが終了した時に呼ばれるメソッド
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
		Debug.Log (playerState_);

		//Move
		h = Input.GetAxis("Horizontal"); //左右方向の移動
		v = Input.GetAxis("Vertical"); //前後方向の移動
		isMoving = Mathf.Abs(h) > 0.1 || Mathf.Abs(v) > 0.1;

		if (!eclairStopping) {
			if (!eclairImmobile) {
				//Bolt
				BoltManagement ();
				//発射間隔を設定する
				shotInterval += Time.deltaTime;

				//Eto
				//EtoManagement ();

				//Avoid
				AvoidManagement ();


			}
			//Damage
			//DamageManagement ();

			//Muteki
			mutekiManagement ();

		}
			
		//Death
		if (HP <= 0) {
			DeathManagement ();
			death = true;
		}

		//Animation関係
		if (eclairStopping) {
			anim = null;
		}
		//設置判定
		if (IsGrounded())
		{
			anim.SetBool ("NewGrounded", true);
			if (playerState_ == PlayerStates.Jump) {
				playerState_ = PlayerStates.Idle;
			}
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
		if (!eclairImmobile && !eclairStopping) {
			//Move
			MoveManagement (h, v);

			//Jump
			JumpManagement ();
		}
	}

	//Move
	void MoveManagement(float horizontal, float vertical)
	{
		if (isMoving) {
			speed = 5;
			runAnim = true;
		} else {
			speed = 0;
			runAnim = false;
		}
			Rotating (horizontal, vertical);
			transform.position += transform.forward * Time.deltaTime * speed;
			anim.SetBool ("Run",runAnim);
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
				//bolt =startLockOn ();
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

		target = Input.mousePosition - player.transform.position;
		Ray pointRay = Camera.main.ScreenPointToRay(Input.mousePosition);

		Vector3 playerToTarget = target - muzzle.transform.position;//マウスポインタの位置とエクレアを結ぶベクトル

		transform.rotation = Quaternion.LookRotation(pointRay.direction);//マウスポインタがある方向にエクレアが回転
		transform.rotation = new Quaternion (0, transform.rotation.y, 0, transform.rotation.w);//回転をエクレアがいる平面に補正

		playerToTarget.Normalize ();
		GameObject go = (GameObject)Instantiate (bolt, muzzle.transform.position, Quaternion.LookRotation (playerToTarget));/*pointRay.direction/*layerToTarget*/ /* boltQuaternionOffset*/
		boltLaunch = true;
		//if (usePhysics)
		//{
			go.GetComponent<Rigidbody>().velocity = player.GetComponent<Rigidbody>().velocity;
			go.GetComponent<Rigidbody>().AddForce(pointRay.direction/*playerToTarget*/ * force, ForceMode.VelocityChange); //ボルトが放物線を描く
        //}
        //go.GetComponent<LinearMovement>().Direction = playerToTarget;  //直線移動できる
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

	/*public  GameObject startLockOn(){
		foreach (GameObject go in GameObject.FindGameObjectsWithTag ("Bolt") ) {
			if (go != null) {
                if (go.GetComponent<BoltScript>().isLanded)
                {
                    //float distance = Vector3.Distance (player.transform.position, go.transform.position);
                    /*if (distance > maxDistance)
                        continue;//遠すぎたらtargetListに追加することなくforの1ループをおわる

				int layerMask = 0;
				/*layerMask += 1 << 8;//Player
                    //layerMask += 1 << 9;//Bolt
                    layerMask += 1 << 13;//Boss
                    layerMask += 1 << 14;//Enemy
                    layerMask = ~layerMask;//最後に論理否定することにより、上記のLayer以外のすべてのレイヤーを指し示すことになる
				layerMask += (1 << 0) + (1 << 9);//DefaultとBolt

				Ray toTargetRay = new Ray(Camera.main.transform.position, go.transform.Find(boltHeadName).position - Camera.main.transform.position);
				RaycastHit hit;
					if (Physics.Raycast (toTargetRay, out hit, maxDistance, layerMask)) {
							
					}
				}
				}
				}
			}*/
				
				
				
				public void endLockOn(){
					cursor = -1;
					
					return;
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
			if (playerState_ == PlayerStates.Bolt) {//エクレアはETOをする	
				if (Input.GetButtonDown ("Space")) {//ボルトを撃った状態でスペースキーを押すとETO							
									playerState_ = PlayerStates.Eto;
								        etoOn = true;
										//audioSource.PlayOneShot (etoileSound);				
										eto_ = eto;
										eto_.transform.position = player.transform.position;
										eto.SetActive (true);
										//GameObject lockonTarget = getCurrentTarget ();
				                        endLockOn ();//ロックオン状態終了
										//EtoScript.target = lockonTarget;
						player.SetActive (false);
			}
		}
	}
	}
		
	void JumpManagement()
	{
		
		if(playerState_ == PlayerStates.Idle){
		if (Input.GetButtonDown ("Space"))
		{				
					playerState_ = PlayerStates.Jump;
					GetComponent<Rigidbody>().velocity = new Vector3(0, jumpHeight, 0);
			}
	}
	}
		
				


	//Damage&HP
	void DamageManagement(){
		playerState_ = PlayerStates.Damaging;
	}

	public void Damage(int damage)
	{
		Damage(damage, new Vector3(0, 0, 0));
	}

	public void Damage(int damage,Vector3 direction){
		if (isMuteki)
		{
		}
		else
		{
			if(!direction.Equals(new Vector3(0,0,0))) transform.rotation = Quaternion.Euler(transform.rotation.eulerAngles.x, Quaternion.LookRotation(-direction).eulerAngles.y, transform.rotation.eulerAngles.z);
			HP -= damage;
			StartCoroutine(whenAttacked("BigAttacked", 1.3f));
		}
	}

	IEnumerator whenAttacked(string parameter,float time)
	{
		startMuteki();
		eclairImmobile = true;
		anim.SetBool(parameter, true);
		yield return new WaitForSeconds(time);
		anim.SetBool(parameter, false);
		eclairImmobile = false;
	}


	void startMuteki()
	{
		ObjectBlinker.Instance.Blink(gameObject, mutekiTime);
		isMuteki = true;
		mutekiTimeCursor = 0;
	}


	private void mutekiManagement()
	{
		if (isMuteki) {
			mutekiTimeCursor += Time.deltaTime;
			if(mutekiTimeCursor > mutekiTime)
			{
				isMuteki = false;
				mutekiTimeCursor = 0;
			}
		}
	}


	//Death
	void DeathManagement(){

		if (death) {
			playerState_ = PlayerStates.Death;
			eclairImmobile = true;
			death = false;
		}
	}

}
