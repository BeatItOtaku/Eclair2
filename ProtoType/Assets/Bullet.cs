using UnityEngine;
using System.Collections;

public class Bullet : MonoBehaviour {

	private Vector3 direction;
	private Ray directionRay;

	public float speed = 20f;

	// Use this for initialization
	void Start () {
		directionRay = Camera.main.ScreenPointToRay (Input.mousePosition);
	}
	// Update is called once per frame
	void Update () {
		
		gameObject.transform.position += directionRay.direction * Time.deltaTime * speed;
	
	}
}
