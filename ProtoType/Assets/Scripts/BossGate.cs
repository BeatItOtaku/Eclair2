using UnityEngine;
using System.Collections;

public class BossGate : MonoBehaviour {

	private Animator anim;
	public EventManager2 em2;

	public AudioSource audioSource;
	public AudioClip bossDoorOpen;

	private bool open;
	private float openTime;
	// Use this for initialization
	void Start () {
		anim = GetComponent<Animator> ();
		openTime = 0;
	}
	
	// Update is called once per frame
	void Update () {
		if (em2.bossSwitchCount == 2) {
			if (openTime <= 3.0f) {
				audioSource.PlayOneShot (bossDoorOpen);
				openTime += Time.deltaTime;

			}

		}
	
	}

	public void DoorOpen(){
		if (em2.bossSwitchCount == 2) {
			anim.SetTrigger ("Open");
			em2.EventCount2 ();
		}
	}
}
