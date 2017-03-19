﻿using UnityEngine;
using System.Collections;

public class Bolt : MonoBehaviour {

	public bool launchBolt = false; //ボルトが着弾したことを判定する変数

	public float speed = 30;

	private PlayerControlManager pcm;
	private GameObject player;

	private Ray direction;
	private RaycastHit hit;
	private Vector3 hitPosition;

	private GameObject parent;

	// Use this for initialization
	void Start () {

	}

	// Update is called once per frame
	void Update () {
		player = GameObject.FindGameObjectWithTag ("Player");
		pcm = player.GetComponent<PlayerControlManager> ();
		transform.rotation = Quaternion.LookRotation (pcm.cursorRay.direction);//カーソルがある方向にボルトが回転

		if (PlayerControlManager.shot == true) {
			direction = new Ray (transform.position, transform.forward);
			if(Physics.Raycast(direction,out hit)){
				hitPosition = hit.point;
			}
			transform.position += transform.forward * Time.deltaTime * speed;
		}else{
			transform.rotation = Quaternion.LookRotation (pcm.cursorRay.direction);//カーソルがある方向にボルトが回転
		}

		if (launchBolt) {
			transform.position = hitPosition;
			transform.SetParent(parent.transform,true);
		}
	}

	private void OnCollisionEnter(Collision col){
		if (col.gameObject.tag == ("Enemy")) {//敵にぶつかった場合、boltは跳ね返って消える。
			Destroy (gameObject, 1);
		} else {
			launchBolt = true;
			parent = col.gameObject;
		}
		PlayerControlManager.shot = false;

}
}