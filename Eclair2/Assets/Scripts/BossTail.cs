using UnityEngine;
using System.Collections;

public class BossTail : EnemyBase {

	public GameObject halo1;
	public GameObject halo2;

	private float damageTime;
	private bool damageStart;
	// Use this for initialization
	void Start () {
		//(halo1.GetComponent ("Halo") as Behaviour).enabled = true;
		//(halo2.GetComponent ("Halo") as Behaviour).enabled = false;
		damageTime = 0;
	}

	// Update is called once per frame
	void Update () {
		if (damageStart == true) {
			damageTime += Time.deltaTime;
		}
			if(damageTime >=3.0f){
			//(halo1.GetComponent ("Halo") as Behaviour).enabled = true;
			//(halo2.GetComponent ("Halo") as Behaviour).enabled = false;
			damageTime = 0;
			damageStart = false;

		}

	
	}

	public override void Damage (int damage, Vector3 direction)
	{
		if (damage >= 15){
			BossMoveManager.BossAttackedCount++;
			//(halo1.GetComponent ("Halo") as Behaviour).enabled = false;
			//(halo2.GetComponent ("Halo") as Behaviour).enabled = true;//BossMoveManager‚ÉˆÚ“®‚µ‚Ü‚µ‚½
			if (BossMoveManager.BossAttackedCount < 4) {
				BossMoveManager.bossAttacked = true;
				damageStart = true;

			}
		}
	}
}
