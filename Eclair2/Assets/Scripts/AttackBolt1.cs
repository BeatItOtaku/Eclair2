using UnityEngine;
using System.Collections;

public class AttackBolt1 : MonoBehaviour {

	private Vector3 startPosition;
	public Transform endPosition;
	private float waitTime = 0;

	//ボルト移動用変数
	private float startTime;
	private float speed = 1;
	private float journeyLength;
	private float distCovered;
	private float fracJourney;

	public static bool attack = false;


	// Use this for initialization
	void Start () {
		startPosition = gameObject.transform.position;
		startTime = Time.time;
		journeyLength = Vector3.Distance(startPosition,endPosition.position);
	
	}
	
	// Update is called once per frame
	void Update () {
		if (attack) {
			waitTime += Time.deltaTime;
			if (waitTime >= 1.0f) {
				float distCovered = (Time.time - startTime) * speed;
				float fracJourney = distCovered / journeyLength;
				transform.position = Vector3.Lerp (startPosition, endPosition.position, fracJourney);

			}
			if (waitTime >= 2.0f) {
				Destroy (gameObject);
			}
		}
	}
}
