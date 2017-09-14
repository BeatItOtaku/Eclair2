using UnityEngine;
using System.Collections;

public class Eto : MonoBehaviour {

	public PlayerControlManager pcm;
	public GameObject player;

	public GameObject attackEffect;

	private GameObject bolt = null;
	private Bolt boltManager;

	private float distance;//etoエクレアからボルトまでの距離

	private Vector3 startPosition;
	private Vector3 endPosition;
	private float startTime;

	private float abs;

	public float etoSpeed = 100;

	public AudioSource audioSource;
	public AudioClip etoileSound;
	public AudioClip etoileEndSound;

	// Use this for initialization
	void Start () {
		
		gameObject.SetActive (false);
	}
	
	// Update is called once per frame
	void Update () {
		Debug.Log (bolt);
		if (bolt == null) {
			bolt = GameObject.FindGameObjectWithTag ("Bolt");
			boltManager = bolt.GetComponent<Bolt> ();

			distance = Vector3.Distance (gameObject.transform.position, bolt.transform.position);
			startPosition = gameObject.transform.position;
			endPosition = bolt.transform.position;
			startTime = Time.time;

			audioSource.PlayOneShot (etoileSound);

		}

		gameObject.transform.LookAt (bolt.transform.position);//ボルトの方を向く。

		float distCovered = (Time.time - startTime) * etoSpeed;
		float fracJourney = distCovered / distance;

		transform.position = Vector3.Lerp (startPosition, endPosition,fracJourney );
		//transform.position += transform.forward * Time.deltaTime * etoSpeed;

		abs = Mathf.Abs (Vector3.Distance (gameObject.transform.position, pcm.lastShot.transform.position));

		if (abs < 1.0f) {
			audioSource.Stop ();
			audioSource.PlayOneShot (etoileEndSound);
			EtoEnd ();
		}

			
	}

	private void EtoEnd(){
		audioSource.PlayOneShot (etoileEndSound);
		Instantiate (attackEffect, transform.position, transform.rotation);
		player.transform.position = endPosition;
		PlayerControlManager.eclairImmobile = false;

		boltManager.launchBolt = false; //ボルトが着弾したという判定を戻す
		boltManager = null;//ETOの目標となるボルトにあるboltManagerスクリプトを消す
		Destroy (bolt);
		pcm.etoOn = false; //ETOが終了した
		player.SetActive (true);
		player.GetComponent<Rigidbody>().velocity = new Vector3(0, 30, 0);
		gameObject.SetActive (false);


	}
	private void OnTriggerEnter(Collider col){
		if (col.gameObject.tag == "Terrain") {
			EtoEnd ();
		}
	}
}
