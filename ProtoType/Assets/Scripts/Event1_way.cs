using UnityEngine;
using System.Collections;

public class Event1_way : MonoBehaviour {

	public EventManager em;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	private void OnTriggerEnter(Collider collider){
		if (collider.gameObject.tag == "Player") {
			em.EventCount();
			Destroy (gameObject);
		}
	}
}
