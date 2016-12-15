using UnityEngine;
using System.Collections;

public class SwitchAnimation : MonoBehaviour {

	private Animator animator;

	// Use this for initialization
	void Start () {
		animator = GetComponent<Animator> ();
		animator.SetBool ("startSwitch", false);
	}
	
	// Update is called once per frame
	void Update () {
		if (FootSwitchScript.switchState == 1) {
			animator.SetBool ("startSwitch", true);
			//DoorScript.open = true;
			if (FootSwitchScript.startSwitch == true) {
				animator.SetBool ("Switch", true);

			}
		}
		if (FootSwitchScript.switchState == 2) {
			animator.SetBool ("Switch", false);
			//DoorScript.open = false;
		}
	
	}
}
