using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class AnimationQueue_Text : AnimationQueueBase {

	// Use this for initialization
	void Start () {
		GetComponent<Text> ().enabled = false;
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public override void Queue(){
		GetComponent<Text> ().enabled = true;
	}
}
