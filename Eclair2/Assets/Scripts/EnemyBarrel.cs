using UnityEngine;
using System.Collections;

public class EnemyBarrel : EnemyBase {

	public float futtobiFactor = 8;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public override void Damage (int damage, Vector3 direction)
	{
		Debug.Log ("BarrelDamaged" + damage);
		gameObject.GetComponent<Rigidbody> ().AddForce (direction.normalized * damage * futtobiFactor,ForceMode.Impulse);
	}
}
