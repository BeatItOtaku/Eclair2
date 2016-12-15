using UnityEngine;
using System.Collections;

public class SBTSwitchzako5: EnemyBase {

	public MeshRenderer meshrender;
	public GameObject lightSphere;
	public GameObject glass;
	public EventManager2 em2;

	public static bool SBT5On;

	private float OnTime;

	public AudioSource audioSource;

	public AudioClip switchOn;
	public AudioClip switchOff;
	// Use this for initialization
	void Start () {
		(glass.GetComponent ("Halo") as Behaviour).enabled = false;
		SBT5On = false;
		OnTime = 0;

	}

	// Update is called once per frame
	void Update () {
		if (SBT5On == true) {
			OnTime += Time.deltaTime;
		} else {
			OnTime = 0;
		}

		if (OnTime >= 2.0f && em2.eventCount2 == 3 && SBT5On == true) {
			lightSphere.SetActive (true);
			meshrender.material.color = new Color (0, 0, 0, 1.0f);
			(glass.GetComponent ("Halo") as Behaviour).enabled = false;
			SBT5On = false;
			audioSource.PlayOneShot (switchOff);
		}

	}
	public override void Damage(int damage ,Vector3 direction){
		if (damage == 15 && meshrender.material.color.a != 0.5f)  {
			lightSphere.SetActive (false);
			meshrender.material.color = new Color (0, 0, 0, 0.5f);
			(glass.GetComponent ("Halo") as Behaviour).enabled = true;
			SBT5On = true;
			audioSource.PlayOneShot (switchOn);

		}

	}
}
