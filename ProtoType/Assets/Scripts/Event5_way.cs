using UnityEngine;
using System.Collections;

public class Event5_way : MonoBehaviour {

	public GameObject fire;
	public GameObject point1;
	public GameObject point2;

	public EventManager2 em2;

	public AudioSource audioSource;
	public AudioClip doorBaku;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if (em2.eventCount2 == 5) {
			Instantiate (fire, point1.transform.position, point1.transform.rotation);
			Instantiate (fire, point2.transform.position, point2.transform.rotation);
			audioSource.PlayOneShot (doorBaku);
			Destroy (gameObject);
		}
	
	}
}
