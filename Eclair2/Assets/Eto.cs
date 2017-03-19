using UnityEngine;
using System.Collections;

public class Eto : MonoBehaviour {

	public PlayerControlManager pcm;
	public GameObject player;

	public float etoSpeed = 100;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		gameObject.transform.LookAt (pcm.lastShot.transform.position);
		transform.position += transform.forward * Time.deltaTime * etoSpeed;
		
	
	}

	private void OnCollisitonEnter(Collider col){
		if (col.gameObject.tag == ("Bolt")) {
			pcm.etoOn = false;
			player.SetActive (true);
			gameObject.SetActive (false);

		}
	}
}
