using UnityEngine;
using System.Collections;

public class Event2Camera : MonoBehaviour {

	public GameObject player = null;
	public GameObject event2EndPosition;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {		
		/*if (EventManager.eventCount == 2) {
				gameObject.transform.LookAt (event2EndPosition.transform);
				gameObject.transform.position += transform.forward * Time.deltaTime * 10;
		}
	   else {
			player = GameObject.FindGameObjectWithTag ("Player");
			gameObject.transform.position = player.transform.position;
		}
	}

	private void OnTriggerEnter(Collider collider){
		if(collider.gameObject.name == "EndPosition"){
			gameObject.transform.position += transform.forward*0;
		}*/
}
}
