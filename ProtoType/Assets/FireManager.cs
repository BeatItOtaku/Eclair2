using UnityEngine;
using System.Collections;

public class FireManager : MonoBehaviour {

	public static bool isShot = true; //falseでエクレアは射撃ができなくなる。
	public static bool isAttack = true; //falseでエクレアは近接攻撃ができなくなる。


	private bool fire = false;

	private int fireCount = 0; //攻撃した回数

	private Animator anim;


	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	//Fire
	public void FireManagement(){
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
}
