using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class AnimationQueue_CameraInAndOut : AnimationQueueBase {

	private bool isStaged = false;

	// Use this for initialization
	void Start () {
        GetComponent<Camera>().enabled = false;
	}
	
	// Update is called once per frame
	void Update () {

	}

	public override void Queue(){
		//Debug.Log ("aho");
		if (isStaged) {//アウトのアニメーション
            CameraChanger.CurrentCamera = GetComponent<Camera>();
            GetComponent<Animator>().Play("Out");
		} else {//インのアニメーション
			CameraChanger.CurrentCamera = GetComponent<Camera>();
			isStaged = true;
			GetComponent<Animator>().Play("In");
		}
	}
}
