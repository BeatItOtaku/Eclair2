using UnityEngine;
using System.Collections;

public class FireManager : MonoBehaviour {

	public static bool isShot = true; //falseでエクレアは射撃ができなくなる。
	public static bool isAttack = false; //falseでエクレアは近接攻撃ができなくなる。

	private bool fire = false; //攻撃を繰り出したかどうか

	private int fireCount = 0; //攻撃した回数

	private Animator anim;

	//デバッグ用
	public GameObject bullet;
	public GameObject close;
	public Transform muzzle;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if(Input.GetButtonDown("Fire")){
			if (isShot) {
				GameObject bullet_	= (GameObject)Instantiate (bullet, muzzle.position, muzzle.rotation);
				bullet_.GetComponent<Rigidbody>().AddForce(transform.forward, ForceMode.VelocityChange);
			}
			if (isAttack) 
			{
				Instantiate (close, muzzle.position, muzzle.rotation);
			}
				

	}
	}
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
	}

	private void OnTriggerStay(Collider col){
		if (col.gameObject.tag == "Enemy") {
			isShot = false;
			isAttack = true;
		} else {
			isShot = true;
			isAttack = false;
		}
	}

}
