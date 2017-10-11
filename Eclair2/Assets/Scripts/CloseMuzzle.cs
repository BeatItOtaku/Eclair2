using UnityEngine;
using System.Collections;

public class CloseMuzzle : MonoBehaviour {

	public GameObject player;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	private void OnCollisonEnter(Collision col){
		/*if (InputManager.close == true) {
			//if (col.gameObject.tag == "Enemy") {
				EnemyBase enemy = col.gameObject.GetComponent<EnemyBase> ();
				if (enemy != null) {
					enemy.EnemyDamage (30, player.transform.forward);
				//}
			}
		}*/
	}
}
