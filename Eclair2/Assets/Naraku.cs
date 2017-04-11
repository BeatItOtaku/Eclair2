using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Naraku : MonoBehaviour {

	public GameObject player;
	private float distance;

	private GameObject[] restartPosition;

	List<KeyValuePair<float, GameObject>> targetList = new List<KeyValuePair<float, GameObject>>();

	// Use this for initialization
	void Start () {

		restartPosition = GameObject.FindGameObjectsWithTag ("RestartPosition");
		foreach (GameObject rp in restartPosition) {
			distance = Vector3.Distance (rp.transform.position, player.transform.position);
			targetList.Add(new KeyValuePair<float, GameObject>(distance, rp));
				}
	}
	
	// Update is called once per frame
	void Update () {
	


	}

	private void OnTriggerEnter(Collider col){
		if(col.gameObject.tag == "Player" || col.gameObject.tag == "ETOEclair")
		{
			Anten.antenStart = true;

		}

	}
		
}
