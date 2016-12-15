using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class AnimationQueue_CameraPlay : AnimationQueueBase {

	//public CameraChanger changer;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {

	}

	public override void Queue(){
		//Debug.Log ("aho");
		CameraChanger.CurrentCamera = GetComponent<Camera>();
		GetComponent<Animation> ().Play ();
	}
}
