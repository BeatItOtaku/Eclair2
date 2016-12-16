using UnityEngine;
using System.Collections;

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

public class PlayerControlManager : MonoBehaviour {

	//汎用系
	public GameObject player;
	public GameObject muzzle;
	public GameObject bolt;
	public GameObject eto;

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

	public static bool isFire = true; //falseでエクレアは通常攻撃ができなくなる。
	public static bool isShot = true; //falseでエクレアは射撃ができなくなる。
	public static bool isAttack = true; //falseでエクレアは近接攻撃ができなくなる。

	private bool fire = false;

	private int fireCount = 0; //攻撃した回数


	//Bolt

	public static bool isBolt = true; //falseでエクレアはボルトが撃てなくなる。

	//Avoid

	public static bool isAvoid = true; //falseでエクレアは回避ができなくなる。

	//Eto

	public static bool isEto = true; //falseでエクレアはETOができなくなる。

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
	private PlayerStates playerState_ = PlayerStates.Idle;

	void Awake(){

		//アニメーション関係
		//Move
		hFloat = Animator.StringToHash("H");
		vFloat = Animator.StringToHash("V");
		groundedBool = Animator.StringToHash("Grounded");
		distToGround = GetComponent<Collider>().bounds.extents.y;
	
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

		//Move
		h = Input.GetAxis("Horizontal"); //マウスの左右方向の移動
		v = Input.GetAxis("Vertical"); //マウスの前後方向の移動
		isMoving = Mathf.Abs(h) > 0.1 || Mathf.Abs(v) > 0.1;

		//設置判定
		if (IsGrounded())
		{
			anim.SetBool ("NewGrounded", true);
		} else {
			anim.SetBool ("NewGrounded", false);
		}
	
	}


	//Move
	void MoveManagement(float horizontal, float vertical)
	{
		Rotating (horizontal, vertical);
		if (isMoving) {
			transform.position += transform.forward * Time.deltaTime * 5;
		} else {
			transform.position += transform.forward * Time.deltaTime * 0;
		}
	}


	//Rotate
	Vector3 Rotating(float horizontal, float vertical)
	{
		Vector3 forward = cameraTransform.TransformDirection (Vector3.forward);
		forward = forward.normalized;
		Vector3 right = new Vector3 (forward.z, 0, -forward.x);

		if ((isMoving && targetDirection != Vector3.zero)) {
			Quaternion targetRotation = Quaternion.LookRotation (targetDirection, Vector3.up);
			Quaternion newRotation = Quaternion.Slerp (GetComponent<Rigidbody> ().rotation, targetRotation, finalTurnSmoothing * Time.deltaTime*20);
			GetComponent<Rigidbody> ().MoveRotation (newRotation);
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


	//Fire
	void FireManagement(){
		if (isFire) {
			StartCoroutine (fireCountCoroutine ());
			switch (fireCount) {
				
			case 1:
				anim.SetTrigger ("Fire1");
				break;
			case 2:
				anim.SetTrigger ("Fire2");
				break;
			case 3:
				anim.SetTrigger ("Fire3");
				break;
			case 4:
				anim.SetTrigger ("Fire4");
				break;
			}
		}
	}

	IEnumerator fireCountCoroutine(){
		if (Input.GetButtonDown ("Fire")) {
			if(!fire)
			anim.SetTrigger ("Fire");
			fireCount++;
			fire = true;
			yield return new WaitForSeconds (1);
			fire = false;
		}
	}


	//Bolt
	void BoltManagement(){
		if (isBolt) {
			if (Input.GetButtonDown ("Bolt")) {

			}
		}
	}

	//Avoid
	void AvoidManagement(){
		if(isAvoid){
			if(Input.GetButtonDown("Avoid")){
				if (isMoving) {
					
				} else {
					
				}

			}
		}
	}


	//Eto
	void EtoManagement(){
		if(isEto){
			
			if(Input.GetButtonDown("Eto")){
			}
		}
	}


	//Damage&HP
	void DamageManagement(){

	}


	//Death
	void DeathManagement(){

	}

}
