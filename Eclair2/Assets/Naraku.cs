using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Naraku : MonoBehaviour {

	public GameObject player;
	private Vector3 playerPosition;

	private GameObject[] restartPosition;

	private List<Vector3> position = new List<Vector3>();

	// Use this for initialization
	void Start () {

		restartPosition = GameObject.FindGameObjectsWithTag ("RestartPosition");
		foreach (GameObject rp in restartPosition) {
			position.Add (rp.transform.position);
		}
	}
	
	// Update is called once per frame
	void Update () {
	
		playerPosition = player.transform.position;

	}

	private void OnTriggerEnter(Collider col){
		if(col.gameObject.tag == "Player" || col.gameObject.tag == "ETOEclair")
		{
			Anten.antenStart = true;

			position.Sort ();

		}




	}
}
