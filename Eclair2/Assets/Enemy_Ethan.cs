using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Enemy_Ethan :EnemyBase {


	private string forwardOrBack;

	// Use this for initialization
	void Start () {
		MaxHP = 100;
		currentHp = MaxHP;
	}
	
	// Update is called once per frame
	void Update () {
		if(player == null)player = GameObject.FindGameObjectWithTag ("Player");


	}

	public override void EnemyDamage(int damage,Vector3 direction){
		currentHp -= damage;

		if (Vector3.Angle (gameObject.transform.forward, direction) <= 90) {
			//エクレアが前後どちらから攻撃を受けたか
			forwardOrBack = "forward";
		} else {
			forwardOrBack = "back";
		}
		Debug.Log (currentHp);
		//anim.SetTrigger (forwardOrBack);

	}

	private void OnCollisionEnter(Collision c){

	if (c.gameObject.tag == "Player") {
			int damage = 10;
			Vector3 direction = gameObject.transform.position - player.transform.position;
			StartCoroutine(c.gameObject.GetComponent<PlayerControlManager> ().EclairDamageCoroutine (damage,direction));
	}


	}
}
