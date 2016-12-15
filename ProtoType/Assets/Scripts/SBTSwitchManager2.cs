using UnityEngine;
using System.Collections;

public class SBTSwitchManager2 : MonoBehaviour {

	public EventManager2 em2;

	// Use this for initialization
	void Start () {

	}

	// Update is called once per frame
	void Update () {
		if (em2.eventCount2 == 3 && SBTSwitchzako3.SBT3On == true && SBTSwitchzako4.SBT4On == true && SBTSwitchzako5.SBT5On == true) {
			em2.EventCount2 ();
		}

	}
}
