using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class TimeCounter : MonoBehaviour {

	public float time = 120;
	private float remainingTime;

	public GameManager gm;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {

		if (gm.monumentCount != gm.allMonument) {
			if (time >= 0) {
				time -= Time.deltaTime;
				time = Mathf.Max (time, 0.0f);
				GetComponent<UnityEngine.UI.Text>().text = ((int)time).ToString();
			} else {
				gm.totalScore = gm.score;
				//ゲーム終了
			}
		}

		if (gm.monumentCount == gm.allMonument) {			
			remainingTime = time;
			gm.totalScore = gm.score + remainingTime * 10;
			//ゲーム終了
		}
	
	}
}
