using UnityEngine;
using System.Collections;
/// <summary>
/// エクレアの、マウス左クリック（初期配置）で繰り出す攻撃に関するスクリプト。
/// エクレアは通常時に左クリックをすると射撃モードとなる。
/// 敵や攻撃できるオブジェクト（以下攻撃対象）との距離が一定以下になると、打撃モードとなる。
/// 攻撃対象にはあらかじめ球状のコライダーが用意されており、それとエクレアが接触している間は攻撃方法が打撃モードとなる。
/// 
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


	private bool isShotting = false;

	public static bool shotContinue = false;//射撃している間、近接攻撃にならない//変数のネーミングセンスが絶望的にない


	private bool shotOn = true;
	private float shotCoolTime = 0.05f;
	private float shotCoolTime_;

	private Animator anim;

	//SE
	public AudioSource audioSource;
	public AudioClip shotSound;

	// Use this for initialization
	void Start () {
		anim = GetComponent<Animator> ();
		shotCoolTime_ = shotCoolTime;
	}

	public void StartShot(){
		isShotting = true;
	}

	public void StopShot(){
		isShotting = false;
		anim.SetBool ("Shot", false);
	}
	
	// Update is called once per frame
	void Update () {
		//射撃モード
		Syageki ();
		//打撃モード
		Dageki();
	}


	//射撃モード
	void Syageki(){
		if (isShotting) {
			if (canShot) {
				//CameraController.setCursor = true;
				anim.SetBool ("Shot", true);
				shotContinue = true;
				if (shotOn == true) {
					//StartCoroutine (ShotCoroutine ());
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
				shotCoolTime_ -= Time.deltaTime;
				if (shotCoolTime_ <= 0) {
					shotOn = true;
					shotCoolTime_ = shotCoolTime;
				}
			}
		}
	}

	//打撃モード
	void Dageki(){

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