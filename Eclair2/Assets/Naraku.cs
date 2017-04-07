using UnityEngine;
using System.Collections;

public class Naraku : MonoBehaviour {

	public GameObject player;

	public Transform restartPosition;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	private void OnTriggerEnter(Collider col){
		if(col.gameObject.tag == "Player")
		{
			Anten.antenStart = true;

		}


	}
}
