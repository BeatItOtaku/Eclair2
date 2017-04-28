using UnityEngine;
using System.Collections;
using wararyo.EclairCueMaker;
public class TutorialPass : MonoBehaviour {

	public TutorialManager tm;

	public CueScenePlayer csp;

	public AudioClip PassedSE;

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
			GameObject se = new GameObject ("PassedSE", typeof(AudioSource));
			se.GetComponent<AudioSource>().clip = PassedSE;
			Instantiate (se, transform.position,new Quaternion(0,0,0,0));
			Destroy (gameObject);
		}
	}
}
