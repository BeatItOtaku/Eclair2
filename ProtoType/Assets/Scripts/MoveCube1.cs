using UnityEngine;
using System.Collections;

public class MoveCube1 : MonoBehaviour {

	private Animator anim;
	public EventManager2 em2;

	// Use this for initialization
	void Start () {
		anim = GetComponent<Animator> ();
	
	}
	
	// Update is called once per frame
	void Update () {
		if (em2.eventCount2 == 2) {
			anim.SetBool ("Move", true);
		}
	}
}
