using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using wararyo.EclairCueMaker;
public class TutorialText10 : MonoBehaviour {

	public TutorialManager tm;
	public CueScenePlayer csp;

	public GameObject red;
	public GameObject blue;
	public GameObject green;

	private bool OnTutorial = false;
	private bool Ontutorial2 = false;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {

		if (!OnTutorial) {
			if (GetComponent<MaskableGraphic> ().enabled == true) {
				tm.TurotialCount ();
				csp.Pause ();
				OnTutorial = true;
			}
		}
		if (!Ontutorial2) {
			if (!red && !blue && !green) {
				tm.TurotialCount ();
				csp.Invoke ();
				Ontutorial2 = true;
			}
		}
	}
}
