using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using wararyo.EclairCueMaker;
public class TutorialText10 : MonoBehaviour {

	public TutorialManager tm;
	public CueScenePlayer csp;

	private bool OnTutrial = false;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {

		if (!OnTutrial) {
			if (GetComponent<MaskableGraphic> ().enabled == true) {
				tm.TurotialCount ();
				csp.Pause ();
				OnTutrial = true;
			}
		}
	}
}
