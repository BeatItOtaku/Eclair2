using UnityEngine;
using System.Collections;

public class Event2CameraChanger : MonoBehaviour {

	public GameObject mainCamera = null;
	private CameraController cc = null;

	public EventManager2 em2;
	public GameObject event2_1Angle;
	public GameObject event2_5Angle;
	public GameObject event2_8Angle;

	private float waitTime;
	public static bool cameraSet;

	// Use this for initialization
	void Start () {
		mainCamera = GameObject.FindGameObjectWithTag ("MainCamera");
		cc = mainCamera.GetComponent<CameraController> ();

		waitTime = 0;
		cameraSet = false;
	}
	
	// Update is called once per frame
	void Update () {
		/*if (em2.eventCount2 == 1) 
		{			
			CameraController.lookAt = event2_1Angle;
			CameraChange ();

		}
		if (em2.eventCount2 == 5) {
			CameraController.lookAt = event2_5Angle;
			CameraChange ();
		}
		if (em2.eventCount2 == 8) {
			CameraController.lookAt = event2_8Angle;
			CameraChange ();
		}*/
			
	}
		public void CameraChange(){
			cameraSet = true;
			PlayerControl.EclairImmobile = true;
			waitTime += Time.deltaTime;

			if(waitTime >=0f){
				cameraSet = false;
				PlayerControl.EclairImmobile = false;
			em2.EventCount2 ();
				waitTime = 0;
			}
		}
				
}
