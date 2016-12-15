using UnityEngine;
using System.Collections;

public class SBTswitchTutorial : EnemyBase {

	public MeshRenderer meshrender;
	public GameObject lightSphere;
	public GameObject glass;

	public EventManager em;


	// Use this for initialization
	void Start () {
		
		(glass.GetComponent ("Halo") as Behaviour).enabled = false;

	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public override void Damage(int damage ,Vector3 direction){
		if (damage == 15 && meshrender.material.color.a != 0.5f)  {
			lightSphere.SetActive (false);
			meshrender.material.color = new Color (0, 0, 0, 0.5f);
			(glass.GetComponent ("Halo") as Behaviour).enabled = true;
			if (EventManager.eventCount == 5) {
				em.EventCount ();
			}
		}

	}

}
