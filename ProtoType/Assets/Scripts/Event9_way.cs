using UnityEngine;
using System.Collections;

public class Event9_way : MonoBehaviour {

    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }

    void OnTriggerEnter(Collider col)
    {
        if (col.CompareTag("Player"))
            StartCoroutine(coroutine());
        //MapLoader.Instance.Reset();
    }

    IEnumerator coroutine()
    {
        GameObject.Find("FadeOutPanel").GetComponent<AnimationQueueBase>().Queue();
        Camera.main.GetComponent<BGMController>().Fade(2, BGMController.TransitionKind.Out);
        //Debug.Log("hoge");
        yield return new WaitForSeconds(2);
        //Debug.Log("piyo");
        GameObject.Find("RunningEclair").GetComponent<AnimationQueueBase>().Queue();
        MapLoader.Instance.startFactory();
        //yield return null;
    }
}
