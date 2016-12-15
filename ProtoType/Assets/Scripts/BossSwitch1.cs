using UnityEngine;
using System.Collections;

public class BossSwitch1 : MonoBehaviour {

	private Animator anim;

	public EventManager2 em2;

	public AudioSource audioSource;
	public AudioClip bossswitchOn;

	public GameObject plate;
	public Material off;
	public Material on;
	// Use this for initialization
	void Start () {
		anim = GetComponent<Animator> ();
		plate.GetComponent<Renderer> ().material = off;
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	private void OnTriggerEnter(Collider collider){
		if (collider.gameObject.tag == "Player") {
			if (em2.eventCount2 == 4) {
				audioSource.PlayOneShot (bossswitchOn);
				em2.EventCount2 ();
				em2.BossSwitch ();
				anim.SetTrigger ("SwitchOn");
				plate.GetComponent<Renderer> ().material = on;
			}
			if (em2.eventCount2 == 7) {
				audioSource.PlayOneShot (bossswitchOn);
				em2.EventCount2 ();
				em2.BossSwitch ();
				anim.SetTrigger ("SwitchOn");
				plate.GetComponent<Renderer> ().material = on;
			}
		}
	}
}
