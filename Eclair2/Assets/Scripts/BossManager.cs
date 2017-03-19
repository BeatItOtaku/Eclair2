using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class BossManager : MonoBehaviour {

    AsyncOperation async;

    // Use this for initialization
    void Start () {
        async = SceneManager.LoadSceneAsync("Result",LoadSceneMode.Additive);
        async.allowSceneActivation = false;    // シーン遷移をしない
    }
	
	// Update is called once per frame
	void Update () {
		
	}

	void OnCollisionEnter(Collision collider){
        async.allowSceneActivation = true;
    }
}
