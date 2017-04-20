using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class NextScene : MonoBehaviour {

	public TutorialManager tm;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	private void OnTriggerEnter(Collider col){
		if (tm.tutorialCount == 7) {
			if (col.gameObject.tag == "Player") {
				SceneManager.LoadSceneAsync ("MiniGame");
			}
		}
	}
}
