using UnityEngine;
using UnityEngine.Events;
using System.Collections;

public class Bolt : MonoBehaviour {

	public bool launchBolt = false; //ボルトが着弾したことを判定する変数

	public float speed = 80;

	//public UnityEvent OnLanded;//悲しい

	private PlayerControlManager pcm;
	private GameObject player;

	private Ray direction;
	private RaycastHit hit;
	private Vector3 startPosition;
	private Vector3 endPosition;
	private float journeyLength;//ボルトが出現した位置からぶつかる場所までの距離
	private float startTime;//ボルトが出現したときの時刻

	private bool trueEnd; //ボルトの進む向きに出したRayが、何かにぶつかったときtrueを返す
	private int layerMask;
	private GameObject parent = null;//ボルトが当たったオブジェクトを親オブジェクトとし、親オブジェクトが動いてもボルトも同期して動くようにする

	public AudioClip boltLandSound;

	// Use this for initialization
	void Start () {
		//プイレヤーオブジェクトを取得、PlayerControlManagerクラスを取得
		player = GameObject.FindGameObjectWithTag ("Player");
		pcm = player.GetComponent<PlayerControlManager> ();

		startPosition = gameObject.transform.position;
		startTime = Time.time;
		transform.rotation = Quaternion.LookRotation (pcm.cursorRay.direction);//カーソルがある方向にボルトが回転
		direction =new Ray (transform.position, transform.forward); 
		layerMask = ~((1 << 8) +(1<<13));//PlayerとBoltとEclairKeepOut以外全部

		if (Physics.Raycast (direction, out hit, Mathf.Infinity, layerMask)) {
			//ボルトの先からRayを飛ばし、何かに当たった場合はその位置まで一定時間で移動する。
			endPosition = hit.point;
			trueEnd = true;
			journeyLength = Vector3.Distance (startPosition, endPosition);
		} else {
			//Rayが何にも当たらなかった場合は、ボルトはただ直進する。
			trueEnd = false;
		}
			
	


	}

	// Update is called once per frame
	void Update () {
		transform.rotation = Quaternion.LookRotation (pcm.cursorRay.direction);//カーソルがある方向にボルトが回転

		if (trueEnd) {
			//ボルトの先から出たRayにオブジェクトが当たったため、その位置までボルトが一定時間で移動する。
			if (PlayerControlManager.shot == true) {
				float distCovered = (Time.time - startTime) * speed;
				float fracJourney = distCovered / journeyLength;
				transform.position = Vector3.Lerp (startPosition, endPosition, fracJourney);
			}

			if (gameObject.transform.position == endPosition && !launchBolt) {
				//ボルトが着弾したとき
				GetComponent<AudioSource> ().PlayOneShot (boltLandSound);
				//OnLanded.Invoke ();
				GameObject.Find("Canvas/BoltLand").GetComponent<BoltLandUI>().Instantiate(gameObject);
				launchBolt = true;
			}
		} else {
			
			//ボルトの先から出たRayに何も当たらなかったので、ボルトは直進
			transform.position += transform.forward * Time.deltaTime * speed;
		}
			/*if (parent != null) {
				transform.SetParent (parent.transform, true);
			}*/

	}

	private void OnCollisionEnter(Collision col){
		if (col.gameObject.tag != "RedMonument") {
			launchBolt = true;
			GetComponent<AudioSource> ().PlayOneShot (boltLandSound);
			//OnLanded.Invoke ();
			if (col.gameObject.tag == "BlueMonument" || col.gameObject.tag == "GreenMonument") {
				parent = col.gameObject;
			} 
			PlayerControlManager.shot = false;
		}
	}
}