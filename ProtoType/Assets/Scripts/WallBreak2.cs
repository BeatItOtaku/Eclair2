using UnityEngine;
using System.Collections;

public class WallBreak2 :MonoBehaviour {

	public GameObject breakFire;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if (EventManager.eventCount == 6) {
			Instantiate (breakFire, transform.position, transform.rotation);
			Destroy (gameObject);
		}
	}
}
