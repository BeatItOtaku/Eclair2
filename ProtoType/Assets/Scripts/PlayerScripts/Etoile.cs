using UnityEngine;
using System.Collections;

public class Etoile : MonoBehaviour {

	public GameObject lightning;
	public GameObject player;

	GameObject target = null;

	public InputManager im;

	/*GameObject FindClosestBolt(){

		GameObject[] gos;
		gos = GameObject.FindGameObjectsWithTag ("Bolt");
		GameObject closest = null;
		float distance = Mathf.Infinity;
		Vector3 position = transform.position;

		foreach (GameObject go in gos) {

			Vector3 diff = go.transform.position - position;
			float curDistance = diff.sqrMagnitude;

			if (curDistance < distance) {
				closest = go;
				distance = curDistance;
			}
		}
		return closest;
	}*/					


	// Use this for initialization
	void Start () {
	
	}

	// Update is called once per frame
	void Update ()
	{
		if (target != null) {
			if (target.gameObject.GetComponent<Rigidbody> ().isKinematic == true) {
				//transform.LookAt (target.transform);
				//transform.position += transform.forward * Time.deltaTime * 50;
			}
		}
	}

	public void startEtoile(GameObject go){
		target = go;
	}

	private void OnCollisionEnter (Collision collider)
	{
		if (target != null) {
			if (collider.gameObject.tag == "Bolt") {
				Instantiate (lightning, transform.position, transform.rotation);
				im.Idle ();
				Destroy (target);
			}
	}
}
}
	