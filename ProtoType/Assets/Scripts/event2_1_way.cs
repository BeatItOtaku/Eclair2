using UnityEngine;
using System.Collections;

public class event2_1_way : MonoBehaviour {

	public EventManager2 em2;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	private void OnTriggerEnter(Collider collider){
		if ( em2.eventCount2 == 5) {
			if (collider.gameObject.tag == "Player") {
				em2.EventCount2 ();

			}
		}
	}
}
