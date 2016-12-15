using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class AnimationQueue_InAndOut : AnimationQueueBase {

	private bool isStaged = false;

	// Use this for initialization
	void Start () {
        GetComponent<MaskableGraphic>().enabled = false;
	}
	
	// Update is called once per frame
	void Update () {

	}

	public override void Queue(){
		//Debug.Log ("aho");
		if (isStaged) {//アウトのアニメーション
			GetComponent<Animator>().Play("Out");
		} else {//インのアニメーション
			GetComponent<MaskableGraphic> ().enabled = true;
			isStaged = true;
			GetComponent<Animator>().Play("In");
		}
	}
}
