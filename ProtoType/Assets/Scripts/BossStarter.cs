using UnityEngine;
using System.Collections;

public class BossStarter : MonoBehaviour {

	//public Vector3 bossPosition;
	public GameObject boss;
	public AudioClip bgm;
	public GameObject skyball;

	public Camera mainCamera;

    public BossSceneManager manager;

	// Use this for initialization
	void Start () {
		EventManager.eventCount = 10;
	}
	
	// Update is called once per frame
	void Update () {
		if (mainCamera == null) {
			mainCamera = Camera.main;
			if (mainCamera != null) {
				mainCamera.GetComponent<BGMController> ().Stop ();
			}
		}
	}

	void OnTriggerEnter(Collider col){
		if(!col.CompareTag("Player")) return;
		Debug.Log ("StartBoss");
		StartBoss ();
        Destroy(gameObject);
	}

	void StartBoss(){
        /*boss.SetActive (true);
		Camera.main.GetComponent<BGMController> ().Play (null, bgm);
		skyball.SetActive (true);*/
        if (manager.Cursor == 0) manager.Invoke();
	}
}
