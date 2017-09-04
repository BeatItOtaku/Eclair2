using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
/// <summary>
/// 合宿で発表するミニゲームを扱うスクリプト。Canvas上にあるTimeCounter.cs、TaskCounter.csはこのスクリプトから変数を継承させたい。
/// </summary>
public class GasshukuMiniGameManager : MonoBehaviour {

	public TimeCounter tc;

	public Text time;
	public  Text gameStart;
	public Text kowashitaTask;
	public Text maxTask;
	public Text breakedTask;
	public Image start;
	public Image timeUp;

	private Image image = null;

	// Use this for initialization
	void Start () {
		kowashitaTask.enabled = false;
		maxTask.enabled = false;
		breakedTask.enabled = false;
		gameStart.enabled = true;
		start.enabled = false;
		timeUp.enabled = false;
	}
	
	// Update is called once per frame
	void Update () {
		if (TimeCounter.countStart == false) {
			if (Input.GetKeyDown (KeyCode.F1)) {
				gameStart.enabled = !gameStart.enabled;
				time.enabled = !time.enabled;

			}
		}
	}
		

	public IEnumerator GameRestartCoroutine(){
		PlayerControlManager.eclairImmobile = true;
		TimeCounter.countStart = false;
		StartCoroutine (GameStartAndTimeUp ());
		yield return new WaitForSeconds (2.0f);

		kowashitaTask.enabled = true;
		yield return new WaitForSeconds (2.0f);
		maxTask.enabled = true;
		breakedTask.enabled = true;

		tc.currentTime = tc.maxTime;
		//タスクの破壊数を0に戻す,イーサンの復活

		yield return new WaitForSeconds (5.0f);
		PlayerControlManager.eclairImmobile = false;
		kowashitaTask.enabled = false;
		maxTask.enabled = false;
		breakedTask.enabled = false;
		gameStart.enabled = true;
		yield break;
	}

	public IEnumerator GameStartAndTimeUp(){
		if (TimeCounter.countStart == true) {
			image = start;
		} else {
			image = timeUp;
		}
		time.enabled = true;
		image.enabled = true;
		yield return new WaitForSeconds (2.0f);
		image.enabled = false;

	}

}
