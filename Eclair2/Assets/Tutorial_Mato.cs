using UnityEngine;
using System.Collections;
using wararyo.EclairCueMaker;
public class Tutorial_Mato : MonoBehaviour {

	public TutorialManager tm;
	public CueScenePlayer csp;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	private void OnCollisionEnter(Collision col){
		if (tm.tutorialCount == 4) {
			if (col.gameObject.tag == "Bolt") {
				tm.TurotialCount ();
			}
		}
	}

	private void OnTriggerEnter(Collider coll){
		if(tm.tutorialCount == 5){
			if(coll.gameObject.tag == "ETOEcliar"){
				tm.TurotialCount();
			}
		}
	}

}
