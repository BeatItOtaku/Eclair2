using UnityEngine;
using System.Collections;
using wararyo.EclairCueMaker;
public class TutorialPass : MonoBehaviour {

	public TutorialManager tm;

	public CueScenePlayer csp;

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
				//csp.Play ();
				csp.Invoke();
			}
			Destroy (gameObject);
		}
	}
}
