using UnityEngine;
using System.Collections;

public class PlayerHeight : MonoBehaviour {

	public GameObject player;

	private Vector3 position;
	// Use this for initialization
	void Start () {
		player = GameObject.FindGameObjectWithTag ("Player");
	
	}
	
	// Update is called once per frame
	void Update () {
		player = GameObject.FindGameObjectWithTag ("Player");
		if (player == null) {
			player = GameObject.FindGameObjectWithTag ("ETOEclair");
		}
		gameObject.transform.position = player.transform.position;
		position = gameObject.transform.position;
		position.y = 0;
		gameObject.transform.position = position;

	}
}
