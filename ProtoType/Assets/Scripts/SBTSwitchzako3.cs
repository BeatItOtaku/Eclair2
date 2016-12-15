using UnityEngine;
using System.Collections;

public class SBTSwitchzako3: EnemyBase {

	public MeshRenderer meshrender;
	public GameObject lightSphere;
	public GameObject glass;
	public EventManager2 em2;

	public static bool SBT3On;

	private float OnTime;

	public AudioSource audioSource;

	public AudioClip switchOn;
	public AudioClip switchOff;
	// Use this for initialization
	void Start () {
		(glass.GetComponent ("Halo") as Behaviour).enabled = false;
		SBT3On = false;
		OnTime = 0;

	}

	// Update is called once per frame
	void Update () {
		if (SBT3On == true) {
			OnTime += Time.deltaTime;
		} else {
			OnTime = 0;
		}

		if (OnTime >= 2.0f && em2.eventCount2 == 3 && SBT3On == true) {
			lightSphere.SetActive (true);
			meshrender.material.color = new Color (0, 0, 0, 1.0f);
			(glass.GetComponent ("Halo") as Behaviour).enabled = false;
			SBT3On = false;
			audioSource.PlayOneShot (switchOff);
		}

	}
	public override void Damage(int damage ,Vector3 direction){
		if (damage == 15 && meshrender.material.color.a != 0.5f)  {
			lightSphere.SetActive (false);
			meshrender.material.color = new Color (0, 0, 0, 0.5f);
			(glass.GetComponent ("Halo") as Behaviour).enabled = true;
			SBT3On = true;
			audioSource.PlayOneShot (switchOn);


		}

	}
}
