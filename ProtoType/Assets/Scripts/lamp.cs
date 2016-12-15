using UnityEngine;
using System.Collections;

public class lamp : MonoBehaviour {

	public GameObject halo1;
	public GameObject halo2;

	public EventManager2 em2;

	public AudioSource audioSource;
	public AudioClip lampOn;

	private bool lamp_;

	// Use this for initialization
	void Start () {
		halo2.SetActive (false);
		lamp_ = false;
	
	}
	
	// Update is called once per frame
	void Update () {
		if (em2.bossSwitchCount == 1 && lamp_ == false) {
			halo1.SetActive (false);
			halo2.SetActive (true);
			audioSource.PlayOneShot (lampOn);
			lamp_ = true;
		}

	
	}
}
