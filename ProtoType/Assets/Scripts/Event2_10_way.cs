using UnityEngine;
using System.Collections;

public class Event2_10_way : MonoBehaviour {

    public EventManager2 em2;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnTriggerEnter(Collider col){
        if(col.CompareTag("Player") && em2.eventCount2 >= 9)
            StartCoroutine(coroutine());
		//MapLoader.Instance.Reset();
	}

    IEnumerator coroutine()
    {
        GameObject.Find("FadeOutPanel").GetComponent<AnimationQueueBase>().Queue();
        Camera.main.GetComponent<BGMController>().Fade(2, BGMController.TransitionKind.Out);
        yield return new WaitForSeconds(2);
        GameObject.Find("RunningEclair").GetComponent<AnimationQueueBase>().Queue();
        MapLoader.Instance.startBoss();
    }
}
