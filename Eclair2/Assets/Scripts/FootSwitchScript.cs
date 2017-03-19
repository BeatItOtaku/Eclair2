using UnityEngine;
using System.Collections;

public class FootSwitchScript : MonoBehaviour {

	private Animator animator;
	public static int switchState;
	public static bool startSwitch = false;

	//switchStateは感圧スイッチの状態。0が基本、1が押した状態、2が押していない状態

	// Use this for initialization
	void Start () {
		switchState = 0;
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	private void OnTriggerEnter(Collider collider){
		if (collider.gameObject.tag == "Player") {
			switchState = 1;
			startSwitch = true;
}
	}
	private void OnTriggerExit(Collider collider){
		if (startSwitch == true) {
			switchState = 2;
		}
	}
}