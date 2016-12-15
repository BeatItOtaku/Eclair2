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

	public static bool EclairImmobile; //trueでエクレアが操作できなくなる。

	//移動系

	private float h;
	private float v;
	private float distToGround;

	private int hFloat;
	private int vFloat;
	private int groundedBool;




	//回転系


	//Fire


	//Bolt


	//Avoid


	//Eto


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
		//移動系
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

		h = Input.GetAxis("Horizontal");
		v = Input.GetAxis("Vertical");

		//設置判定
		if (IsGrounded())
		{
			anim.SetBool ("NewGrounded", true);
		} else {
			anim.SetBool ("NewGrounded", false);
		}
	
	}
}
