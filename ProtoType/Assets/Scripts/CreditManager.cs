using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class CreditManager : AnimationQueueManager {

    protected override void Start()
    {
        base.Start();
        CameraController.cursorIsLocked = false;
		StartCoroutine (coroutine ());
    }

	IEnumerator coroutine(){
		yield return new WaitForSeconds (10);
		MapLoader.Reset ();
	}
}
