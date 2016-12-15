using UnityEngine;
using System.Collections;

public class SBTSwitchManager1 : MonoBehaviour {

	public EventManager2 em2;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if (em2.eventCount2 == 2 && SBTSwitchzako1.SBT1On == true && SBTSwitchzako2.SBT2On == true) {
			em2.EventCount2 ();
			DoorScript.doorOpen = true;
		}
	
	}
}
