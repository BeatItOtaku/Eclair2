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


	private void OnTriggerEnter(Collider col){
		if (tm.tutorialCount == 5) {
			if (col.gameObject.tag == "Bolt") {
				tm.TurotialCount ();
			}
		}
		if(tm.tutorialCount == 6){
			if(col.gameObject.tag == "ETOEclair"){
				tm.TurotialCount();
			}
		}
	}

}
