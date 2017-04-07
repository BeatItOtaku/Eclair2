using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Naraku : MonoBehaviour {

	public GameObject player;
	private Vector3 playerPosition;

	private GameObject[] restartPosition;

	private List<float> position = new List<float>();

	// Use this for initialization
	void Start () {

		restartPosition = GameObject.FindGameObjectsWithTag ("RestartPosition");
	}
	
	// Update is called once per frame
	void Update () {
	
		playerPosition = player.transform.position;

	}

	private void OnTriggerEnter(Collider col){
		if(col.gameObject.tag == "Player")
		{
			Anten.antenStart = true;

			foreach (GameObject rp in restartPosition) {
				position.Add (Vector3.Distance(playerPosition , rp.transform.position));
				position.Sort ();
			}
		}




	}
}
