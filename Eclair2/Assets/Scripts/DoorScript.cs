using UnityEngine;
using System.Collections;

public class DoorScript : MonoBehaviour {

	private Animator animator;
	public static bool doorOpen;

	public EventManager2 em2;

	public AudioSource audioSource;
	public AudioClip doorOpenSE;

	// Use this for initialization
	void Start () {
		animator = GetComponent<Animator> ();
		doorOpen = false;

	}
	
	// Update is called once per frame
	void Update () {
		Debug.Log (doorOpen);

		if (em2.eventCount2 == 3 && doorOpen == true) {
			animator.SetTrigger ("Open");
			audioSource.PlayOneShot (doorOpenSE);
			doorOpen = false;
	}
}
}
