using UnityEngine;
using System.Collections;

public class Bolt : MonoBehaviour {

	public PlayerControlManager pcm;
	public Rigidbody rb;

	public bool launchBolt = false;

	// Use this for initialization
	void Start () {
		
			rb.GetComponent<Rigidbody> ().velocity = pcm.BoltDirection;//PlayerControlManagerに記載してある、プレイヤーからカーソルの方向へのVector3で速度を与える
	}
	
	// Update is called once per frame
	void Update () {
	

	}

	private void OnCollisionEnter(Collision col){
		if (gameObject.tag == ("Enemy")) {//敵にぶつかった場合、boltは跳ね返って消える。
			rb.useGravity = true;
			Destroy (gameObject, 1);
		} else {
			launchBolt = true;
		}
}
}
