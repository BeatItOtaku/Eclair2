using UnityEngine;
using System.Collections;

public class TutorialPass : MonoBehaviour {

	public TutorialManager tm;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
	}

	private void OnTriggerEnter(Collider col){
		if (col.gameObject.tag == "Player") {
			tm.passCount++;
			if (tm.passCount == 3) {
				tm.TurotialCount ();
			}
			Destroy (gameObject);
		}
	}
}
