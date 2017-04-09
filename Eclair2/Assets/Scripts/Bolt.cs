using UnityEngine;
using System.Collections;

public class Bolt : MonoBehaviour {

	public bool launchBolt = false; //ボルトが着弾したことを判定する変数

	public float speed = 50;

	private PlayerControlManager pcm;
	private GameObject player;

	private Ray direction;
	private RaycastHit hit;
	private Vector3 hitPosition;

	private GameObject parent = null;//ボルトが当たったオブジェクトを親オブジェクトとし、親オブジェクトが動いてもボルトも同期して動くようにする


	public AudioClip boltLandSound;

	// Use this for initialization
	void Start () {
		//プイレヤーオブジェクトを取得、PlayerControlManagerクラスを取得
		player = GameObject.FindGameObjectWithTag ("Player");
		pcm = player.GetComponent<PlayerControlManager> ();

	}

	// Update is called once per frame
	void Update () {
		transform.rotation = Quaternion.LookRotation (pcm.cursorRay.direction);//カーソルがある方向にボルトが回転

		if (PlayerControlManager.shot == true) {
			direction = new Ray (transform.position, transform.forward);
			if(Physics.Raycast(direction,out hit)){
				hitPosition = hit.point;
			}
			transform.position += transform.forward * Time.deltaTime * speed;

		}
		if (launchBolt) {
			if (parent != null) {
				transform.position = hitPosition;
				transform.SetParent (parent.transform, true);
			}
		}
	}

	private void OnCollisionEnter(Collision col){
		if (col.gameObject.tag != "RedMonument") {
			launchBolt = true;
			GetComponent<AudioSource> ().PlayOneShot (boltLandSound);
			parent = col.gameObject;
			PlayerControlManager.shot = false;
		}
	}
}