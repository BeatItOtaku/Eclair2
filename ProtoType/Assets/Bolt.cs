using UnityEngine;
using System.Collections;

public class Bolt : MonoBehaviour {

	private GameObject player;
	private PlayerControlManager pcm;
	private Rigidbody rb;

	public bool launchBolt = false;

	private float velocity = 30;

	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
		transform.position += transform.forward * Time.deltaTime * velocity;
	}

	private void OnCollisionEnter(Collision col){
		if (col.gameObject.tag == ("Enemy")) {//敵にぶつかった場合、boltは跳ね返って消える。
			//rb.useGravity = true;
			Destroy (gameObject, 1);
		} else {
			launchBolt = true;
		}
		transform.position += Vector3.zero;
}
}
