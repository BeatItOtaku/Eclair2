using UnityEngine;
using System.Collections;

public class CameraChanger : MonoBehaviour {

	/*public GameObject player;
	public GameObject mainCamera;
	public static GameObject mainCamera_ = null;

	public GameObject event2StartCameraPosition = null;
	public GameObject event2EndPosition = null;

	public GameObject uI;

	public GameObject em = null;

	public GameObject bossKilledCamera;

	private float cameraWaitTime;*/

	private static Camera currentCamera;
	public static Camera CurrentCamera {
		get {
			return currentCamera;
		}
		set {
            if (currentCamera != null) currentCamera.enabled = false;
			currentCamera = value;
            value.enabled = true;
		}
	}

	private static CameraChanger mInstance;
	public static CameraChanger Instance
	{

		get
		{

			if (mInstance == null)
			{
				GameObject go = new GameObject("CameraChanger");
				mInstance = go.AddComponent<CameraChanger>();
			}

			return mInstance;
		}
	}

	// Use this for initialization
	void Start () {
		/*em = GameObject.Find ("EventManager");
		event2StartCameraPosition = GameObject.Find ("Event2_StartPosition");
		event2EndPosition = GameObject.Find ("EndPosition");
		mainCamera_ = mainCamera;
		cameraWaitTime = 0;*/
		currentCamera = Camera.main;
	}
	
	// Update is called once per frame
	void Update () {
		/*if (BossMoveManager.BossAttackedCount == 2) {
			mainCamera_ = bossKilledCamera;
			bossKilledCamera.SetActive (true);
			uI.SetActive (false);
		}
		if (EventManager.eventCount == 2) {
			PlayerControl.EclairImmobile = true;
			mainCamera_ = event2StartCameraPosition;
			cameraWaitTime += Time.deltaTime;
			if (cameraWaitTime >= 2.0f) {
				PlayerControl.EclairImmobile = false;
				mainCamera_ = player;
				em.GetComponent<EventManager>().EventCount ();
			}
		}*/
	}

	public void OnSceneChanged(){
		currentCamera = Camera.main;
	}

	public void ChangeTemporary(Camera cam,float time){
		StartCoroutine (ChangeTemporary_raw (cam, time));
	}

	public IEnumerator ChangeTemporary_raw(Camera cam,float time){
		Camera beforeCamera = CurrentCamera;
		CurrentCamera = cam;
		yield return new WaitForSecondsRealtime (time);
		if(beforeCamera != null) CurrentCamera = beforeCamera;
	}
}
