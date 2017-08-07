using UnityEngine;
using System.Collections;
/// <summary>
/// エクレアの、マウス左クリック（初期配置）で繰り出す攻撃に関するスクリプト。
/// エクレアは通常時に左クリックをすると射撃モードとなる。
/// 敵や攻撃できるオブジェクト（以下攻撃対象）との距離が一定以下になると、打撃モードとなる。
/// 攻撃対象にはあらかじめ球状のコライダーが用意されており、それとエクレアが接触している間は攻撃方法が打撃モードとなる。
/// 現在は射撃モードのみ記述している。
/// </summary>
public class FireManager : MonoBehaviour {

	//オブジェクト
	private GameObject player;
	public GameObject bullet;//射撃モードで使う弾
	public Transform muzzle;//射撃モードで使う銃口の位置
	public Transform effectMuzzle;//マズルフラッシュが出る用の銃口
	public GameObject muzzleFlash;//銃口から出るマズルフラッシュ

	//射撃、打撃ができるかどうかの判定
	public  bool canShot = true; //falseでエクレアは射撃ができなくなる。
	public  bool canAttack = false; //falseでエクレアは近接攻撃ができなくなる。

	public static bool shotContinue = false;//射撃している間、近接攻撃にならない//変数のネーミングセンスが絶望的にない

	//打撃に関する変数
	public static bool attacked = false;//攻撃したかどうか
	public static int attackCount = 0;//攻撃した回数

	//射撃に関する変数
	private bool shotOn = true;
	private float shotCoolTime = 0.05f;//次の弾を打ち出すまでにかかる時間
	private float shotingTime;//射撃ボタンを押してから経過した時間

	private Animator anim;

	//SE
	public AudioSource audioSource;
	public AudioClip shotSound;

	// Use this for initialization
	void Start () {
		anim = GetComponent<Animator> ();
		shotingTime = shotCoolTime;
	}

	/*public void StartShot(){
		isShotting = true;
	}

	public void StopShot(){
		isShotting = false;
		anim.SetBool ("Shot", false);
	}*/
	
	// Update is called once per frame
	void Update () {
		//射撃モード
		//SyagekiStart ();
		//打撃モード
		//Dageki();
		Debug.Log(attacked);
	}

	//canShot変数により、攻撃キーが入力されたとき打撃を出すか射撃を出すかを判別する。
	public void SyagekiOrDageki(){
		if (canShot) {
			SyagekiStart ();
		} else {
			Dageki ();
		}
	}


	//射撃モード
	public void SyagekiStart(){
				anim.SetBool ("Shot", true);
				shotContinue = true;
				if (shotOn == true) {
					Ray cursorRay = Camera.main.ViewportPointToRay (new Vector3 (0.5f, 0.6f, 0f));
					transform.rotation = Quaternion.LookRotation (cursorRay.direction);//カーソルがある方向にエクレアが回転
					transform.rotation = new Quaternion (0, transform.rotation.y, 0, transform.rotation.w);
					GameObject bulletInstance = (GameObject)Instantiate (bullet, muzzle.position, muzzle.rotation);
					bulletInstance.GetComponent<Bullet> ().CursorRay = cursorRay;
					Instantiate (muzzleFlash, effectMuzzle.position, effectMuzzle.rotation);
					audioSource.PlayOneShot (shotSound);
					Vector3 cameraDirection = Camera.main.transform.forward;
					shotOn = false;
				}
				shotingTime -= Time.deltaTime;
				if (shotingTime <= 0) {
					shotOn = true;
					shotingTime = shotCoolTime;
				}
	}

	public void SyagekiStop(){
		anim.SetBool ("Shot", false);
		shotingTime = shotCoolTime;
	}

	//打撃モード
	public void Dageki(){
		attacked = true;
		anim.SetBool ("Dageki", true);
	}

	//ここからのOnTriggerStay,OnTriggerExitで射撃モード、打撃モードの判定を行う。
	private void OnTriggerStay(Collider col){//打撃モードになる。
		if (shotContinue == false) {
			if (col.gameObject.tag == "Enemy") {
				canShot = false;
				canAttack = true;
			}
		}
	}

	private void OnTriggerExit(Collider col){//射撃モードになる。
		if(col.gameObject.tag == "Enemy"){
			canShot = true;
			canAttack = false;
		}
	}
}