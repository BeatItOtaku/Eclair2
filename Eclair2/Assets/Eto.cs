using UnityEngine;
using System.Collections;

public class Eto : MonoBehaviour {

	public PlayerControlManager pcm;
	public GameObject player;

	private GameObject bolt;
	private Bolt boltManager;

	private float distance;//etoエクレアからボルトまでの距離
	private float abs = 0.5f;//etoエクレアからボルトまでの距離で、ETOが解除される距離
	public float etoSpeed = 100;

	public AudioClip etoileEndSound;

	// Use this for initialization
	void Start () {
		gameObject.SetActive (false);
	}
	
	// Update is called once per frame
	void Update () {

		if (bolt == null) {
			bolt = GameObject.FindGameObjectWithTag ("Bolt");
			boltManager = bolt.GetComponent<Bolt> ();
		}

		gameObject.transform.LookAt (pcm.lastShot.transform.position);//ボルトの方を向く。
		transform.position += transform.forward * Time.deltaTime * etoSpeed;

		distance = Vector3.Distance (gameObject.transform.position, pcm.lastShot.transform.position);
		if (Mathf.Abs (distance) < abs) {//etoエクレアとボルトとの距離がabs以下ならETO解除
			pcm.etoOn = false;
			player.transform.position = gameObject.transform.position;
			Destroy (pcm.lastShot);//ボルトを消去

			player.SetActive (true);
			gameObject.SetActive (false);

		}
	
	}

	private void OnCollisitonEnter(Collider col){
		if (col.gameObject.tag == ("Bolt")) {
			bolt = null;  //ETOの目標となるボルトを消す
			boltManager = null;//ETOの目標となるボルトにあるboltManagerスクリプトを消す
			boltManager.launchBolt = false; //ボルトが着弾したという判定を戻す
			pcm.isEto = false; //ボルトが消えたため、ETOをできない状態に戻す
			pcm.etoOn = false; //ETOが終了した
			GetComponent<AudioSource> ().PlayOneShot (etoileEndSound);
			player.SetActive (true);
			gameObject.SetActive (false);

		}
	}
}
