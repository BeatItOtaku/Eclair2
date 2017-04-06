using UnityEngine;
using System.Collections;
using System.Collections.Generic;

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

	public GameObject cursor;//画面上に現れるカーソル

	public  bool eclairImmobile = false; //trueでエクレアが移動、回転ができなくなる。
	public  bool eclairStopping = false; //trueでエクレアのアニメーション含む全ての動作ができなくなる。

	//Move
	private float speed;
	private float horizontal;
	private float vertical;
	private float distToGround;

	private int hFloat;
	private int vFloat;
	private int groundedBool;

	private bool isMoving = false; //trueでエクレアが動いている、falseで止まっている。
	private bool runAnim;


	//Rotate
	public Transform cameraTransform;   // 操作するカメラ

	private float turnSmoothing = 3.0f;
	private float finalTurnSmoothing;


	private Vector3 lastDirection;
	private Vector3 targetDirection;


	//Fire
	//Fireに関しては、別のFireManagerに詳細が記述されている。
	public  bool isFire = true; //falseでエクレアは通常攻撃ができなくなる。
	private FireManager fm;


	//Bolt
	public GameObject bolt;
	public Transform muzzle;//ボルトが出る位置。銃口
	private GameObject preShot = null;//既に打ち出したボルト
	public GameObject lastShot = null; //最後に打ち出したボルト

	public  bool isBolt = true; //falseでエクレアはボルトが撃てなくなる。
	public static bool shot = false; //ボルトを打ち出したことを判定する

	private Vector3 cursorV;//カーソルの位置ベクトル
	public Ray cursorRay;

	private Bolt boltmanager;//Boltオブジェクト内のBoltというスクリプト

	public Vector3 boltRotationOffset;//unityのインスペクタ上で編集できる。
	private Quaternion boltQuaternionOffset;//ボルトの角度を補正する。
	private Quaternion BoltQuaternionOffset{
		get{
			return boltQuaternionOffset;
		}
		set{
			boltQuaternionOffset = Quaternion.Euler (boltRotationOffset);
		}
	}


	//Avoid
	public  bool isAvoid = true; //falseでエクレアは回避ができなくなる。


	//Eto
	public  bool isEto = false; //falseでエクレアはETOができなくなる。
	public  bool etoOn = false;
	public GameObject eto;


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


	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		Debug.Log (playerState_);

		//Move
		horizontal = Input.GetAxis("Horizontal"); //左右方向の移動
		vertical = Input.GetAxis("Vertical"); //前後方向の移動
		isMoving = Mathf.Abs(horizontal) > 0.1 || Mathf.Abs(vertical) > 0.1;

		if (!eclairStopping) {
			if (!eclairImmobile) {
				//Bolt
				BoltManagement ();
				//発射間隔を設定する
				//shotInterval += Time.deltaTime;

				//Eto
				EtoManagement ();

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


		//設置判定
		if (IsGrounded())
		{
			anim.SetBool ("NewGrounded", true);
			if (playerState_ == PlayerStates.Jump || playerState_ == PlayerStates.Eto) {
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
		
			//Move
			MoveManagement (horizontal, vertical);

			//Jump
			JumpManagement ();

	}

	//Move
	void MoveManagement(float horizontal, float vertical)
	{
		if (eclairImmobile || eclairStopping) {
			isMoving = false;
		}
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
	void AvoidManagement(){
		if(isAvoid){		
			if(Input.GetButtonDown("Avoid")){
				playerState_ = PlayerStates.Avoid;
				if (isMoving) {
					anim.SetFloat ("Horizontal", horizontal);
					anim.SetFloat ("Vertical", vertical);
				} else {
					anim.SetTrigger ("IdleAvoid");
				}
				playerState_ = PlayerStates.Idle;
			}
		}
	}


	//Bolt
	/// <summary>
	/// 最終的に、このエクレアのPlayerControlManagerスクリプトとボルトのBoltスクリプトだけで完結するようにする。
	/// </summary>
	void BoltManagement()
	{
		if (isBolt) {	
			if (Input.GetButtonDown ("LaunchBolt")) 
			{
				playerState_ = PlayerStates.Bolt;
				cursorV = cursor.transform.position;
				cursorRay = Camera.main.ScreenPointToRay (cursorV);
				transform.rotation = Quaternion.LookRotation (cursorRay.direction);//カーソルがある方向にエクレアが回転
				transform.rotation = new Quaternion (0, transform.rotation.y, 0, transform.rotation.w);//回転をエクレアがいる平面に補正

				//ボルトの複製と前に撃ったボルトの消去
				if (preShot != null)
					Destroy (preShot);
				lastShot = (GameObject)Instantiate (bolt, muzzle.position, player.transform.rotation);//boltを打ち出す
				preShot = lastShot;
				boltmanager = lastShot.GetComponent<Bolt> ();
				shot = true; //打ち出したことを判定する変数
			}
		
			if (boltmanager != null) {				
					isEto = true;
					//ボルトまでの距離を表示するようなUIを出す？
			}
			}
		}


	//Eto
	/// <summary>
	/// 最終的にエクレアのPlayerControlManagerスクリプトとEtoエクレアのEtoスクリプトで完結するようにする。
	/// </summary>
	void EtoManagement(){
		if (isEto) {
			if (boltmanager.launchBolt == true) {//ボルトが着弾している状態
				if (Input.GetButtonDown ("Space")) {						
					playerState_ = PlayerStates.Eto;
					transform.rotation = Quaternion.LookRotation (lastShot.transform.position);//マウスポインタがある方向にエクレアが回転
					transform.rotation = new Quaternion (0, transform.rotation.y, 0, transform.rotation.w);//回転をエクレアがいる平面に補正
					eto.transform.position = player.transform.position;
					etoOn = true;
					eto.SetActive (true);				                       
					player.SetActive (false);
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
				GetComponent<Rigidbody>().velocity = new Vector3(0, jumpHeight, 0);
				anim.SetTrigger ("Jump");
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
