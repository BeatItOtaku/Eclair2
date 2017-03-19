using UnityEngine;
using System.Collections;

public class BoltDirectionGo : MonoBehaviour {


	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		transform.position += transform.forward * Time.deltaTime * 50;
	
	}

	private void OnCollisionEnter(Collision col){
		transform.position += transform.forward * 0;
	}
}
