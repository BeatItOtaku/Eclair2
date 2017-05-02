using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Text15Script : MonoBehaviour {

	private bool OnTutorial = false;

	public TutorialManager tm;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if (!OnTutorial) {
			if (GetComponent<MaskableGraphic> ().enabled == true) {
				tm.TurotialCount ();
				OnTutorial = true;
			}
		}
	
	}
}
