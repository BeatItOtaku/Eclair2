using UnityEngine;
using System.Collections;

public class ThunderSwitchScript : EnemyBase {

	private Animator animator;
	public EventManager2 em2;

	private int switch1;
	private int switch2;

	private float switchTime;
	// Use this for initialization
	void Start () {
		animator = GetComponent<Animator> ();
		switch1 = 0;
		switch2 = 0;
		switchTime = 0;
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	public override void Damage(int damage, Vector3 Direction){

		if (damage == 15) {
			if (em2.eventCount2 == 2) {
				animator.SetBool ("SwitchOn",true);
				switch1++;
				switchTime += Time.deltaTime;
				if (switch1 >= 2) {
					em2.EventCount2 ();
					switchTime = 0;
				}
				if (switch1 < 2 && switchTime >= 1.0f) {
					switch1 = 0;
					animator.SetBool ("SwitchOn", false);
					switchTime = 0;
				}
			}
			if (em2.eventCount2 == 3) {
				animator.SetBool ("SwitchOn",true);
				switch2++;
				switchTime += Time.deltaTime;
				if (switch2 >= 3) {
					em2.EventCount2 ();
					switchTime = 0;
				}
				if(switch2 < 3 && switchTime >= 1.0f){
					switch2 = 0;
				}
			}
		}
	}
}
