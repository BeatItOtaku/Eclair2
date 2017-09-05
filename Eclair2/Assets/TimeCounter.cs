using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
/// <summary>
/// 合宿用ミニゲームの制限時間を管理するスクリプト。
/// </summary>
public class TimeCounter : MonoBehaviour {

	public GasshukuMiniGameManager gmgm;
	public BreakedTask bt;

	public float maxTime = 100;
	public float currentTime;

	public static bool countStart = false;//trueで制限時間スタート

	public Text time;

	// Use this for initialization
	void Start () {
		currentTime = maxTime;
		GetComponent<UnityEngine.UI.Text>().text = maxTime.ToString();
	}
	
	// Update is called once per frame
	void Update () {
		//Debug.Log (countStart);

		if (countStart == true) {
			
			currentTime -= Time.deltaTime;

			// マイナス値にならないようにしている
			currentTime = Mathf.Max (currentTime, 0.0f);
			GetComponent<UnityEngine.UI.Text> ().text = ((int)currentTime).ToString ();
		

			if (currentTime <= 30) {
				time.color = new Color (255f / 255f, 50f / 255f, 50f / 255f, 255f / 225f);

			}
			if (currentTime <= 0) {
				StartCoroutine (gmgm.GameRestartCoroutine ());
				countStart = false;
			}
		}
	}
}
