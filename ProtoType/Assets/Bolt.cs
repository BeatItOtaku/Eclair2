using UnityEngine;
using System.Collections;

public class Bolt : MonoBehaviour {

	public bool launchBolt = false; //ボルトが着弾したことを判定する変数

	private float velocity = 30;

	private Ray direction;
	private RaycastHit boltHit;

	private Vector3 hitPosition;

	// Use this for initialization
	void Start () {
		direction = new Ray (transform.position, transform.forward);


		if(Physics.Raycast(direction,out boltHit)){
			hitPosition = boltHit.point;
		}
	}
	
	// Update is called once per frame
	void Update () {
		if (PlayerControlManager.shot == true) {
			transform.position += transform.forward * Time.deltaTime * velocity;
		} 			

			
	}

	private void OnCollisionEnter(Collision col){
		transform.position += Vector3.zero;
		if (col.gameObject.tag == ("Enemy")) {//敵にぶつかった場合、boltは跳ね返って消える。
			Destroy (gameObject, 1);
		} else {
			launchBolt = true;
		}
		PlayerControlManager.shot = false;

}
}
