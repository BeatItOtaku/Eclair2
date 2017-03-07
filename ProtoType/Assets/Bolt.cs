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
		//rb = this.GetComponent<Rigidbody> ();
		player = GameObject.FindGameObjectWithTag ("Player");
		pcm = player.GetComponent<PlayerControlManager> ();
			//rb.velocity = pcm.BoltDirection;//PlayerControlManagerに記載してある、プレイヤーからカーソルの方向へのVector3で速度を与える
		transform.position += transform.forward * Time.deltaTime * velocity;
	}
	
	// Update is called once per frame
	void Update () {
	

	}

	private void OnCollisionEnter(Collision col){
		if (col.gameObject.tag == ("Enemy")) {//敵にぶつかった場合、boltは跳ね返って消える。
			rb.useGravity = true;
			Destroy (gameObject, 1);
		} else {
			launchBolt = true;
		}
}
}
