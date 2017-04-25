using UnityEngine;
using System.Collections;

public class Bolt : MonoBehaviour {

	public bool launchBolt = false; //ボルトが着弾したことを判定する変数

	public float speed = 50;

	private PlayerControlManager pcm;
	private GameObject player;

	private Ray direction;
	private RaycastHit hit;
	private Vector3 startPosition;
	private Vector3 endPosition;
	private float journeyLength;//ボルトが出現した位置からぶつかる場所までの距離
	private float startTime;//ボルトが出現したときの時刻

	private GameObject parent = null;//ボルトが当たったオブジェクトを親オブジェクトとし、親オブジェクトが動いてもボルトも同期して動くようにする


	public AudioClip boltLandSound;

	// Use this for initialization
	void Start () {
		//プイレヤーオブジェクトを取得、PlayerControlManagerクラスを取得
		player = GameObject.FindGameObjectWithTag ("Player");
		pcm = player.GetComponent<PlayerControlManager> ();

		startPosition = gameObject.transform.position;
		startTime = Time.time;
		direction = pcm.cursorRay;//new Ray (transform.position, transform.forward);
		if(Physics.Raycast(direction,out hit,Mathf.Infinity)){
			endPosition = hit.point;
		}
			journeyLength = Vector3.Distance (startPosition, endPosition);
	


	}

	// Update is called once per frame
	void Update () {
		transform.rotation = Quaternion.LookRotation (pcm.cursorRay.direction);//カーソルがある方向にボルトが回転

		if (PlayerControlManager.shot == true) {
			

			float distCovered = (Time.time - startTime) * speed;
			float fracJourney = distCovered / journeyLength;

			transform.position = Vector3.Lerp (startPosition, endPosition,fracJourney );

		}
		if (launchBolt) {
			transform.position = endPosition;
			if (parent != null) {
				transform.SetParent (parent.transform, true);
			}
		}
	}

	private void OnCollisionEnter(Collision col){
		if (col.gameObject.tag != "RedMonument") {
			launchBolt = true;
			GetComponent<AudioSource> ().PlayOneShot (boltLandSound);
			if (col.gameObject.tag == "BlueMonument" || col.gameObject.tag == "GreenMonument") {
				parent = col.gameObject;
			} 
			PlayerControlManager.shot = false;
		}
	}
}