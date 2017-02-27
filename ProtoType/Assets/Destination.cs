using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class Destination : MonoBehaviour {

	public GameObject player;
	public GameObject target;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if (target) {
			GetComponent<RectTransform> ().position = RectTransformUtility.WorldToScreenPoint (Camera.main, target.transform.position);
			int distance = (int)(Vector3.Distance(player.transform.position,target.transform.position) + 0.5f);//四捨五入のための+0.5f
			GetComponentInChildren<Text>().text = distance + "m";
		}
	}
}
