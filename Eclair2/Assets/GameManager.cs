using UnityEngine;
using System.Collections;

public class GameManager : MonoBehaviour {

	public int score = 0;
	public float totalScore;
	public int monumentCount = 0;
	public int allMonument = 120;

	public float time = 120;
	private float remainingTime;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {

		if (monumentCount != allMonument) {
			if (time >= 0) {
				time -= Time.deltaTime;
				time = Mathf.Max (time, 0.0f);	
			} else {

			}
		}

		if (monumentCount == allMonument) {
			remainingTime = time;
			totalScore = score + remainingTime * 10;

		}
	}
}
