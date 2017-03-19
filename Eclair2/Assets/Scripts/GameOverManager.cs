using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class GameOverManager : AnimationQueueManager {

    protected override void Start()
    {
        base.Start();
        CameraController.cursorIsLocked = false;
    }
	
	// Update is called once per frame
	void Update () {
	
	}

    public void GoToTitie()
    {
		MapLoader.Instance.GoToTitle ();
    }


    public void Continue()
    {
        MapLoader.ReloadScene();
    }
}
