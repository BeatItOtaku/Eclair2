using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using wararyo.EclairInput;

/// <summary>
/// PlayerControlManagerに書かれることは、エクレアの動作全般。アニメーションも含む。
/// ・プレイヤーステイト
/// ・Move(エクレアの移動）
/// ・Rotate（エクレアの回転）
/// ・Fire（通常攻撃）・・・別のFireManagerスクリプトに記述。
/// ・Bolt（ボルト射出）
/// ・Avoid（回避）
/// ・Eto（電撃移動）
/// ・Jump（ジャンプ）
/// ・ダメージとHPと無敵と死亡
/// </summary>
/// 

public class PlayerControlManager : MonoBehaviour {

	

	/// <summary>
	/// このメソッドは実行されることはない。
	/// PlayerControlManager.cs内にあるメソッドを列挙し、アクセスしやすくする。・・・はず。
	/// </summary>
	//MethodList用の仮の変数。
	private InputEvent e_ = null;
	private int damage_ = 0;
	private Vector3 direction_;
	private bool bannedUsing = true;

	private void MethodList(){
		if (bannedUsing == false) {
			//エクレアがカメラの向いている方向を向く。
					LookAtRayFromCamera ();
			//エクレアの移動
					MoveManagement (horizontal, vertical);
			//小さい段差を自動で乗り越えるメソッド。未完成。
					//ClimbManagement ();
			//射撃時のカニ歩きをするメソッド。
					KaniMove ();
			//回避に関するコルーチン。
					AvoidCoroutine (e_);
			//ボルト射出に関するメソッド。
					BoltManagement (e_);
			//ETOに関するメソッド。
					EtoManagement (e_);
			//エクレアがダメージを受けた時のコルーチン。未完成。
					EclairDamageCoroutine (damage_, direction_);
			//エクレアが無敵になるときのコルーチン。
					MutekiCoroutine ();
			//エクレアのメッシュの表示を切り替えるメソッド。
					EclairMeshSwicher ();
			//エクレアが倒されたときのコルーチン。未完成。
					DeathCoroutine ();
		}
	}



	//ここから変数群
	//汎用系
	public GameObject player;

	public GameObject ashimoto;//設置判定をするための足元におくオブジェクト

	public static bool eclairImmobile = false; //trueでエクレアは動けなくなる。

	//Move
	private float speed = 0;//移動の速さ
	private float horizontal = 0;//水平方向の移動量。
	private float vertical = 0;//前後方向の移動量。
	private float downSpeed = -13f;//落下時のスピード。落下中に射撃をするとゆっくり落ちてしまう現象を解消するため。

	private bool isMoving = false; //trueでエクレアが動いている、falseで止まっている。
	private bool runAnim = false;//アニメーションのRunに対する変数。trueでRunアニメーションが再生される。

	//ダッシュに関する変数群
	private float runTime = 0;//runTimeは走っている時間、一定時間以上になると移動速度が速くなる。
	private bool dash = false;//ダッシュ状態かどうか

	private float stopTime = 0;//エクレアが止まっている時間。アニメーションのRun→RunToIdleに遷移するのを調整する変数。


	//Rotate
	public Transform cameraTransform;   // 操作するカメラ

	private float turnSmoothing = 3.0f;
	//private float finalTurnSmoothing = 0;

	private Vector3 lastDirection;
	private Vector3 targetDirection;


	//Fire
	//Fireに関しては、別のFireManagerに詳細が記述されている。
	public FireManager fm;
	private Vector3 direction;//shot中の移動に使う


	//Bolt
	public GameObject bolt;
	public Transform muzzle;//ボルトが出る位置。銃口
	private GameObject preShot = null;//既に打ち出したボルト
	public GameObject lastShot = null; //最後に打ち出したボルト

	public  bool canBolt = true; //falseでエクレアはボルトが撃てなくなる。
	public static bool boltShot = false; //ボルトを打ち出したことを判定する

	public Ray cursorRay;//カメラから照準に向かって進むRay

	private Bolt boltmanager;//Boltオブジェクト内のBoltというスクリプト

	//Boltキーを押し続けたときのボルト攻撃用変数
	private bool boltButton;
	//private float boltTime = 0;//Boltキーを押し続けることで加算されていく時間。
	public GameObject attackBolt1;//攻撃に使用するボルトそのもの
	private Vector3 hitPosition;//攻撃する地点


	//Avoid
	public  bool canAvoid = true; //falseでエクレアは回避ができなくなる。
	private float avoidSpeed = 1;
	private float mutekiTime = 0.5f;//回避時の無敵時間
	private int avoidCount = 3;//Avoidメソッド中のfor文で使う変数
	private Ray avoidDirection;
	private RaycastHit avoidHit;
	private float rayDistance;

	//Eto
	public  bool canEto = false; //falseでエクレアはETOができなくなる。
	public  bool isEto = false; //ETO中にOnになる変数
	public GameObject eto;


	//Climb
	public GameObject head;//エクレアの頭頂部
	private Ray headRay;//headから前方に出るRay
	//private RaycastHit headHit;

	private Ray ashimotoRay;//ashimotoから前方に出るRay
	//private RaycastHit ashimotoHit;

	//private float rayLength = 1f;//Rayの長さ
	//private float climbHeight = 10;
	//private bool obstacle = false; //エクレアが

	//HP,Damage,muteki
	public int currentHp = MaxHP;
	const int MaxHP = 100;

	private bool attackFromForward;//エクレアが前から攻撃を受けたかどうか
	private string forwardOrBack;//アニメーションのパラメータに使うための変数。


	private Renderer[] meshes;//エクレアの子オブジェクトでメッシュが含まれるもの。エクレアの点滅に使う
	private bool isMuteki = false;//無敵かどうか
	private int tenmetsuCount = 20;//無敵時に何回点滅するか
	private float mutekiTimeInterval = 0.1f;//点滅の間隔


	/*public HPGaugeController HPGauge;

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
*/


	//死亡
	private bool death = false;//死んだかどうか

	//アニメーション
	private Animator anim;

	//SE
	public AudioSource audioSource;

	public AudioClip boltLaunchSound;
	public AudioClip etoileSound;
	public AudioClip boltLandSound;


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


	//設置判定
	bool IsGrounded() 
	{
		return Physics.Raycast(ashimoto.transform.position + new Vector3(0,0.1f,0), -Vector3.up,  0.30f);

	}


	// Use this for initialization
	void Start () {

		EclairInput.any += OnInput;

		//アニメーション関係
		anim = player.GetComponent<Animator> ();

		//無敵関係
		meshes = GetComponentsInChildren<Renderer>();
	}

	//インプットシステム
	void OnInput(InputEvent e){
				switch (e.type) {
				case "Move":
					horizontal = e.delta.x;
					vertical = e.delta.y;
					break;
				case "Bolt":
			if(!isEto)BoltManagement (e);
					break;
				case "ETO":
					EtoManagement (e);
					break;
				case "Avoid":
				StartCoroutine (AvoidCoroutine (e));
					break;
		case "Shot":
			if (!isEto) {
				if (e.eventState == InputState.Down)
					fm.SyagekiOrDageki ();
				else
					fm.SyagekiStop ();
			}
					break;
		}
	}
	
	// Update is called once per frame
	void Update () {
		Debug.Log (playerState_);
		//Death
		Debug.Log(currentHp);
		Debug.Log (isMuteki);
		//設置判定
		if (IsGrounded())
		{
			anim.SetBool ("Grounded", true);
			if (playerState_ == PlayerStates.Eto) {//ETO終了後地面にいる場合、プレイヤーステイトをidleにする。
				playerState_ = PlayerStates.Idle;
			}
		} else {
			anim.SetBool ("Grounded", false);
			player.transform.position += new Vector3(0,-12f,0)* Time.deltaTime;
			//エクレアが地面にいない場合、常に下向きにエクレアの座標を移動させている。
		}
	}

	void FixedUpdate()
	{
			//Move
		if (FireManager.shotContinue == true) {
			KaniMove ();
		} else {
				MoveManagement (horizontal, vertical);
		}

			//Jump
			//JumpManagement ();
	}


	void LookAtRayFromCamera(){//エクレアが何か動作をしたときにカメラの向いてる方向に向くメソッド
		
		cursorRay = Camera.main.ViewportPointToRay (new Vector3 (0.5f, 0.6f, 0f));
		transform.rotation = Quaternion.LookRotation (cursorRay.direction);//カーソルがある方向にエクレアが回転
		transform.rotation = new Quaternion (0, transform.rotation.y, 0, transform.rotation.w);//回転をエクレアがいる平面に補正

		//メソッドリスト
		MethodList();

		}


	void MoveManagement (float horizontal, float vertical)
	{

		if (eclairImmobile) {//エクレアが移動してはいけない時
			isMoving = false;
		} else {
			isMoving = Mathf.Abs (horizontal) > 0.1 || Mathf.Abs (vertical) > 0.1;
		}

		if (isMoving) {//エクレアが移動できるとき、移動スピードと走りのアニメーションを決定する。
			
			//一定時間移動するとダッシュ
			runTime += Time.deltaTime;
			if (runTime >= 2.0f)dash = true;
			if(dash)speed = 6;//ダッシュ時のスピード
			if(!dash)speed = 3;//非ダッシュ時のスピード
			//ストップタイム（エクレアが停止している時間）の初期化
			stopTime = 0;

			runAnim = true;
		} else {
			
			//移動キーを離しても、一定時間以内までにもう一度移動キーが押されれば、アニメーションのステートはRunからRunToIdleに向かわず走り続ける
			stopTime += Time.deltaTime;
			if (stopTime <= 0.5f)runAnim = false;

			speed = 0;
			runTime = 0;
			dash = false;

		}
		if (!IsGrounded ()) {//落下中は走るモーションにならない。
			runAnim = false;
		}

		//StartCoroutine(ClimbManagement ());

		Rotating (horizontal, vertical);
			player.transform.position += transform.forward * Time.deltaTime * speed;

		anim.SetBool ("Run", runAnim);
	}


	//Climb
	/// <summary>
	/// 目の前にエクレアよりも小さい段差がある場合、自動で乗り越える。
	/// </summary>	
	/*public IEnumerator ClimbManagement(){

		headRay = new Ray (head.transform.position, player.transform.forward);
		ashimotoRay = new Ray (ashimoto.transform.position, player.transform.forward);

		if (IsGrounded ()) {
			if(Physics.Raycast(ashimotoRay, out ashimotoHit,rayLength)){
				Debug.Log ("hi");
				if (!Physics.Raycast (headRay, out headHit,rayLength)) {
					//エクレアはオブジェクトを乗り越える
					Debug.Log ("ie");
					for (int i = 0; i < 5; i++) {
						player.GetComponent<Rigidbody> ().AddForce (player.transform.up * 10);
							yield return new WaitForSeconds (0.01f);
					}
				}
			}
		}
	}
*/


	void KaniMove(){
 	//射撃時とボルトチャージ時のカニ歩き。向きを固定したまま前後左右に動く
		if (Mathf.Abs (horizontal) > 0.1f || Mathf.Abs (vertical) > 0.1f) {
			direction = gameObject.transform.right * horizontal + gameObject.transform.forward * vertical;
			direction.y = downSpeed;
			speed = 1f;
		} else {
			speed = 0;
		}
		player.transform.position += direction * Time.deltaTime * speed;
		LookAtRayFromCamera ();
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
		if (!(Mathf.Abs (horizontal) > 0.9 || Mathf.Abs (vertical) > 0.9)) {			
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


	//Avoid
	/// <summary>
	/// 移動している状態で左Shiftキーを押すと移動している方向に回避。
	/// 回避中は無敵時間がある。
	/// </summary>
	public IEnumerator AvoidCoroutine(InputEvent e){
		if(canAvoid){		
			if(e.eventState == InputState.Down){
				if (isMuteki)yield break;
				isMuteki = true;
				playerState_ = PlayerStates.Avoid;
				LookAtRayFromCamera ();//エクレアがカメラの方を向く

				Vector3 horizontalV = gameObject.transform.right * horizontal * avoidSpeed;//左右方向の移動量
				Vector3 verticalV = gameObject.transform.forward * vertical * avoidSpeed;//前後方向の移動量

				//エクレアの正面から出るRayが何かにぶつかるかどうか
				avoidDirection = new Ray (transform.position, transform.forward);
				if (Physics.Raycast (avoidDirection, out avoidHit,Mathf.Infinity)) {
					rayDistance = avoidHit.distance;
				}

					eclairImmobile = true;
				for(int i= 0;i <avoidCount;i++){
					if (rayDistance>1f) {
					transform.Translate (horizontalV + verticalV,Space.World);//world座標内で、エクレアをavoidCountの回数だけ移動させている
					}
					//エクレアの目の前に障害物がある場合移動しない。
					yield return new WaitForSeconds (0.01f);
				}
					eclairImmobile = false;

				yield return new WaitForSeconds (mutekiTime);
				isMuteki = false;

				playerState_ = PlayerStates.Idle;
			}
		}
	}


	//Bolt
	/// <summary>
	/// 最終的に、このエクレアのPlayerControlManager.csとボルトのBolt.csだけで完結するようにする。
	/// </summary>
	void BoltManagement(InputEvent e)
	{
		if (canBolt) {
				if (Input.GetButtonDown ("LaunchBolt")) {
					playerState_ = PlayerStates.Bolt;
					eclairImmobile = true;//ボルトを撃つとき一瞬止まる

					LookAtRayFromCamera ();
					anim.SetBool ("Run", false);
									
					//ボルトの複製と前に撃ったボルトの消去
					if (preShot != null)
						Destroy (preShot);//前に撃ったボルトが存在する場合、そのボルトを消す
					lastShot = (GameObject)Instantiate (bolt, muzzle.position, transform.rotation);//boltを打ち出す
					preShot = lastShot;
					boltmanager = lastShot.GetComponent<Bolt> ();
					boltShot = true; //打ち出したことを判定する変数
					anim.SetTrigger ("Bolt");
					audioSource.PlayOneShot (boltLaunchSound);//ボルトを打ち出した音
				}
		}
			}
		


	//Eto
	/// <summary>
	/// 最終的にエクレアのPlayerControlManager.csとEtoエクレアのEto.csで完結するようにする。
	/// </summary>
	void EtoManagement(InputEvent e){
		if (canEto) {
			if (boltmanager.launchBolt == true) {//ボルトが着弾している状態
				if (lastShot != null) {
					if (e.eventState == InputState.Down) {						
						playerState_ = PlayerStates.Eto;
						transform.rotation = Quaternion.LookRotation (lastShot.transform.position);//マウスポインタがある方向にエクレアが回転
						transform.rotation = new Quaternion (0, transform.rotation.y, 0, transform.rotation.w);//回転をエクレアがいる平面に補正
						eto.transform.position = player.transform.position;//ETOエクレアをエクレアと同じ座標に移動させている。
						//audioSource.PlayOneShot (etoileSound);
						isEto = true;//ETO中にtrueになる変数
						eto.SetActive (true);				                       

					}
				} 
			}
		}
	}



	///<summary>>
	/// Damage&HPに関するコルーチン。PlayerControlManager.cs内ではなく、敵にアタッチしてあるスクリプトから呼び出し、ダメージを与える。
	///ダメージ受けたあと、一定時間無敵になる。directionの方向にエクレアが仰け反る。
	/// EclairDamageCroutineはエクレアがダメージを受けたときの処理であり、敵のスクリプト内で実行させる。
	/// EnemyDamageCroutineは敵がダメージを受けたときの処理であり、エクレアのスクリプト内で実行させる。
	/// </summary>
	public IEnumerator EclairDamageCoroutine(int damage, Vector3 direction){
		if (isMuteki|| death || isEto)yield break;
		StartCoroutine (MutekiCoroutine ());

		currentHp -= damage;
		//eclairImmobile = true;

		if (currentHp <= 0) {
			//死亡
			StartCoroutine(DeathCoroutine());
			yield break;
		}

		if (Vector3.Angle (gameObject.transform.forward, direction) <= 90) {
			//エクレアが前後どちらから攻撃を受けたか
			forwardOrBack = "DamageFromForward";
		} else {
			forwardOrBack = "DamageFromBack";
		}

		anim.SetTrigger (forwardOrBack);


		//eclairImmobile = false;
	}


	public IEnumerator MutekiCoroutine(){
		isMuteki = true;
		for (int i = 0; i < tenmetsuCount; i++) {
			EclairMeshSwicher ();
			yield return new WaitForSeconds(mutekiTimeInterval);
		}
		isMuteki = false;
	}

	/// <summary>
	/// ダメージを受けたときにエクレアが点滅するためや、ETO中にエクレアを消すために使う。
	/// このメソッド自体ではエクレアのメッシュの表示、非常時を切り替えているだけである。
	/// </summary>
	public void EclairMeshSwicher(){
		foreach (Renderer mesh in meshes) {
			mesh.enabled = !mesh.enabled;
		}
	}

	//Death
	/// <summary>
	/// エクレアの体力が0になったときの状態
	/// </summary>
	public IEnumerator DeathCoroutine(){
		anim.SetTrigger ("Death");
		death = true;
		yield return new WaitForSeconds (2.0f);
		//ゲームを終了させる処理
	}
}
