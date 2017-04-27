using UnityEngine;
using System.Collections;
using wararyo.EclairCueMaker;
public class Tutorial_Mato : MonoBehaviour {

	public TutorialManager tm;
	public CueScenePlayer csp;
	public PlayerControlManager pcm;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
		if (tm.tutorialCount == 6 && pcm.etoOn == true) {
			tm.TurotialCount ();
		}
	}


	private void OnTriggerEnter(Collider col){
		if (tm.tutorialCount == 5) {
			if (col.gameObject.tag == "Bolt") {
				tm.TurotialCount ();
			}
		}
	}

}
