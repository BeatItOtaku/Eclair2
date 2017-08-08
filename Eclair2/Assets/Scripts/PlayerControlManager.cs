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

	//汎用系
	public GameObject player;

	public GameObject asimoto;//設置判定をするための足元におくオブジェクト

	public static bool eclairImmobile = false; //trueでエクレアは動けなくなる。

	//Move
	private float speed;//移動の速さ
	private float horizontal;//水平方向の移動量。
	private float vertical;//前後方向の移動量。
	private float downSpeed = -13f;//落下時のスピード。落下中に射撃をするとゆっくり落ちてしまう現象を解消するため。

	private bool isMoving = false; //trueでエクレアが動いている、falseで止まっている。
	private bool runAnim;//アニメーションのRunに対する変数。trueでRunアニメーションが再生される。

	//ダッシュに関する変数群
	private float runTime = 0;//runTimeは走っている時間、一定時間以上になると移動速度が速くなる。
	private bool dash;//ダッシュ状態かどうか

	private float stopTime = 0;//エクレアが止まっている時間。アニメーションのRun→RunToIdleに遷移するのを調整する変数。


	//Rotate
	public Transform cameraTransform;   // 操作するカメラ

	private float turnSmoothing = 3.0f;
	private float finalTurnSmoothing;

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

	public  bool isBolt = true; //falseでエクレアはボルトが撃てなくなる。
	public static bool boltShot = false; //ボルトを打ち出したことを判定する

	public Ray cursorRay;//カメラから照準に向かって進むRay

	private Bolt boltmanager;//Boltオブジェクト内のBoltというスクリプト

	//Boltキーを押し続けたときのボルト攻撃用変数
	private bool boltButton;
	private float boltTime = 0;//Boltキーを押し続けることで加算されていく時間。
	public GameObject attackBolt1;//攻撃に使用するボルトそのもの
	private Vector3 hitPosition;//攻撃する地点


	//Avoid
	public  bool isAvoid = true; //falseでエクレアは回避ができなくなる。
	private float avoidSpeed;

	//Eto
	public  bool isEto = false; //falseでエクレアはETOができなくなる。
	public  bool etoOn = false;
	public GameObject eto;


	//Jump
	public float jumpHeight = 100.0f;


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
		return Physics.Raycast(asimoto.transform.position + new Vector3(0,0.1f,0), -Vector3.up,  0.30f);

	}


	// Use this for initialization
	void Start () {
		EclairInput.any += OnInput;

		//アニメーション関係
		anim = player.GetComponent<Animator> ();
	}

	//インプットシステム
	void OnInput(InputEvent e){
				switch (e.type) {
				case "Move":
					horizontal = e.delta.x;
					vertical = e.delta.y;
					break;
				case "Bolt":
					BoltManagement (e);
					break;
				case "ETO":
					EtoManagement (e);
					break;
				case "Avoid":
					AvoidManagement (e);
					break;
				case "Shot":
					if (e.eventState == InputState.Down)
					fm.SyagekiOrDageki();
					else
						fm.SyagekiStop ();
					break;
		}
	}
	
	// Update is called once per frame
	void Update () {
		Debug.Log (playerState_);

		//Death
		if (HP <= 0) {
			DeathManagement ();
			death = true;
		}

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

		//Avoid
		//AvoidManagement ();

			//Jump
			//JumpManagement ();
	}

	//Move	
	/*void MoveManagement(Vector2 delta){
		MoveManagement (delta.x, delta.y);
	}*/

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

		Rotating (horizontal, vertical);
			player.transform.position += transform.forward * Time.deltaTime * speed;

		anim.SetBool ("Run", runAnim);
	}

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
	/// 移動していない状態で左Shiftキーを押すとその場回避、移動している状態で左Shiftキーを押すと移動している方向に回避。
	/// </summary>
	void AvoidManagement(InputEvent e){
		if(isAvoid){		
			if(e.eventState == InputState.Down){
				playerState_ = PlayerStates.Avoid;
				if (isMoving) {
					avoidSpeed = 200;
					Vector3 horizontalV = gameObject.transform.right * horizontal * avoidSpeed;
					Vector3 verticalV = gameObject.transform.forward * vertical * avoidSpeed;
					transform.position = Vector3.MoveTowards (transform.position, horizontalV + verticalV, Time.deltaTime);
					anim.SetFloat ("Horizontal", horizontal);
					anim.SetFloat ("Vertical", vertical);
				}
				playerState_ = PlayerStates.Idle;
			}
		}
	}


	//Bolt
	/// <summary>
	/// 最終的に、このエクレアのPlayerControlManagerスクリプトとボルトのBoltスクリプトだけで完結するようにする。
	/// </summary>
	void BoltManagement(InputEvent e)
	{
		if (isBolt) {
			/*if (Input.GetButton ("LaunchBolt")) {
				boltTime += Time.deltaTime;
				boltButton = true;
				cursorRay = Camera.main.ViewportPointToRay (new Vector3 (0.5f, 0.6f, 0f));
				transform.rotation = Quaternion.LookRotation (cursorRay.direction);//カーソルがある方向にエクレアが回転
				transform.rotation = new Quaternion (0, transform.rotation.y, 0, transform.rotation.w);//回転をエクレアがいる平面に補正
				anim.SetBool("Run",false);

			}*/
				if (Input.GetButtonDown ("LaunchBolt")) {
					//boltTimeの値、つまりBoltキーを押し続けた時間によって攻撃が変わる。
					//boltButton = false;

					//if (boltTime <= 0.5f) {//ETO用ボルト射出
						playerState_ = PlayerStates.Bolt;
						eclairImmobile = true;//ボルトを撃つとき一瞬止まる

						cursorRay = Camera.main.ViewportPointToRay (new Vector3 (0.5f, 0.6f, 0f));
						transform.rotation = Quaternion.LookRotation (cursorRay.direction);//カーソルがある方向にエクレアが回転
						transform.rotation = new Quaternion (0, transform.rotation.y, 0, transform.rotation.w);//回転をエクレアがいる平面に補正
						anim.SetBool("Run",false);
									
						//ボルトの複製と前に撃ったボルトの消去
						if (preShot != null)Destroy (preShot);//前に撃ったボルトが存在する場合、そのボルトを消す
						lastShot = (GameObject)Instantiate (bolt, muzzle.position, transform.rotation);//boltを打ち出す
						preShot = lastShot;
						boltmanager = lastShot.GetComponent<Bolt> ();
						boltShot = true; //打ち出したことを判定する変数
						anim.SetTrigger ("Bolt");
						audioSource.PlayOneShot (boltLaunchSound);//ボルトを打ち出した音

					/*}else{//0.5秒以上boltキーを押すことで出せる技
					
					hitPosition = cursorRay.GetPoint (5);//カメラから一定の距離
					GameObject go = (GameObject)Instantiate (attackBolt1, hitPosition, transform.rotation);
					audioSource.PlayOneShot (boltLaunchSound);
					audioSource.clip = boltLandSound;
					audioSource.PlayDelayed (0.8f);
						Destroy (go, 1.0f);
					}*/

				//boltTime = 0;//ボルトを押し続けた時間の初期化
				}
			}
			}
		


	//Eto
	/// <summary>
	/// 最終的にエクレアのPlayerControlManagerスクリプトとEtoエクレアのEtoスクリプトで完結するようにする。
	/// </summary>
	void EtoManagement(InputEvent e){
		if (isEto) {
			if (boltmanager.launchBolt == true) {//ボルトが着弾している状態
				if (lastShot != null) {
					if (e.eventState == InputState.Down) {						
						playerState_ = PlayerStates.Eto;
						transform.rotation = Quaternion.LookRotation (lastShot.transform.position);//マウスポインタがある方向にエクレアが回転
						transform.rotation = new Quaternion (0, transform.rotation.y, 0, transform.rotation.w);//回転をエクレアがいる平面に補正
						eto.transform.position = player.transform.position;
						//audioSource.PlayOneShot (etoileSound);
						etoOn = true;
						eto.SetActive (true);				                       
						player.SetActive (false);
					}
				} 
			}
		}
	}

	//Jump
	/// <summary>
	/// Boltを射出していない状態でspaceキーを押すとジャンプする。
	/// </summary>	
	void JumpManagement()
	{
		if(playerState_ == PlayerStates.Idle){
			if (Input.GetButtonDown ("Space"))
			{				
				playerState_ = PlayerStates.Jump;
				//anim.SetTrigger ("Jump");
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
			anim.SetTrigger ("Death");
			eclairImmobile = true;
			death = false;
		}
	}

}
