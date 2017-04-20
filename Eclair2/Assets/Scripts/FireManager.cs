using UnityEngine;
using System.Collections;

public class FireManager : MonoBehaviour {

	private GameObject player;
	public PlayerControlManager pcm;

	public  bool isShot = true; //falseでエクレアは射撃ができなくなる。
	public  bool isAttack = false; //falseでエクレアは近接攻撃ができなくなる。

	public static bool shotContinue = false;//射撃している間、近接攻撃にならない

	private bool fire = false; //攻撃を繰り出したかどうか

	private bool shotOn = true;
	private float shotCoolTime = 0.10f;
	private float shotCoolTime_;

	private int fireCount = 0; //攻撃した回数

	private Animator anim;

	public GameObject shotEffect;
	//デバッグ用
	public GameObject bullet;
	public GameObject close;
	public Transform muzzle;
	public Transform muzzleFlash;

	// Use this for initialization
	void Start () {
		anim = GetComponent<Animator> ();
		shotCoolTime_ = shotCoolTime;
	}
	
	// Update is called once per frame
	void Update () {
		if (pcm == null) {
			player = GameObject.FindGameObjectWithTag ("Player");
			pcm = GetComponent<PlayerControlManager> ();
		}
		if(pcm.eclairStopping == false){
		if(Input.GetButton("Fire")){
			if (isShot) {
				//CameraController.setCursor = true;
				anim.SetBool ("Shot",true);
				shotContinue = true;
				if (shotOn == true) {
					//StartCoroutine (ShotCoroutine ());
					Ray cursorRay = Camera.main.ScreenPointToRay (Input.mousePosition);
					transform.rotation = Quaternion.LookRotation (cursorRay.direction);//カーソルがある方向にエクレアが回転
					transform.rotation = new Quaternion (0, transform.rotation.y, 0, transform.rotation.w);
					Instantiate (bullet, muzzle.position, muzzle.rotation);
					Instantiate (shotEffect, muzzleFlash.position, muzzleFlash.rotation);
					Vector3 cameraDirection = Camera.main.transform.forward;
					shotOn = false;
				}
				shotCoolTime_ -= Time.deltaTime;
				if (shotCoolTime_ <= 0) {
					shotOn = true;
					shotCoolTime_ = shotCoolTime;
				}
			}
			if (isAttack) 
			{
				Instantiate (close, muzzle.position, muzzle.rotation);
			}
	}
		if (Input.GetButtonUp ("Fire")) 
		{
			anim.SetBool ("Shot",false);
			//shotContinue = false;
			//CameraController.setCursor = false;
		}
	}
	}
	/*
	//Fire
	public void FireManagement(){
			StartCoroutine (fireCountCoroutine ());
			switch (fireCount) {

			case 1:
				anim.SetBool ("Fire1",true);
				break;
			case 2:
				anim.SetBool ("Fire2",true);
				break;
			case 3:
				anim.SetBool ("Fire3",true);
				break;
			case 4:
				anim.SetBool ("Fire4",true);
				break;
		}
	}

	IEnumerator fireCountCoroutine(){
		if (Input.GetButtonDown ("Fire")) {
			if (fireCount <= 4)
			{
				fireCount++;
			}
			if(!fire)
				anim.SetBool ("Fire",true);
			
			fire = true;
			yield return new WaitForSeconds (1);
			fire = false;
		}
	}*/

	IEnumerator ShotCoroutine()
	{
		shotOn = false;
			Instantiate (bullet, muzzle.position, muzzle.rotation);
			Vector3 cameraDirection = Camera.main.transform.forward;
			//transform.rotation = Quaternion.LookRotation (cameraDirection);//カーソルがある方向にエクレアが回転
			//transform.rotation = new Quaternion (0, transform.rotation.y, 0, transform.rotation.w);//回転をエクレアがいる平面に補正
			

		yield return new WaitForSeconds (60f);
		shotOn = true;
	}
		
		

	private void OnTriggerStay(Collider col){

		if (shotContinue == false) {
			if (col.gameObject.tag == "Enemy") {
				isShot = false;
				isAttack = true;
			}
		}
	}

	private void OnTriggerExit(Collider col){
		
		if(col.gameObject.tag == "Enemy"){
			isShot = true;
			isAttack = false;
		}
	}

}
