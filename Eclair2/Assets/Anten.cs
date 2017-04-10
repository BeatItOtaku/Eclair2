using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Anten : MonoBehaviour {

	private float antenSpeed = 0.1f;
	private float alfa;

	private bool black = false;

	public static bool antenStart = false;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		Debug.Log (alfa);
		if (antenStart) {
			StartCoroutine (AntenCoroutine ());
		}
	}

     IEnumerator AntenCoroutine(){
		GetComponent<Image> ().color = new Color (0, 0, 0, alfa);
		if (!black) {
			alfa += antenSpeed;
			if (alfa >= 1) {
				yield return new WaitForSeconds (0.5f);
				black = true;
			}
		} else {
			alfa -= antenSpeed;
			if (alfa <= 0) {
				alfa = 0;
				black = false;
				antenStart = false;
			}
		}
	}
}
