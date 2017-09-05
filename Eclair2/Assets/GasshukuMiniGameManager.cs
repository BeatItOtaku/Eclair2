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
	public Image sunadokei;

	private Image image = null;

	public bool moji = true;//イーサンにぶつかって〜と制限時間の文字をつけ消しする

	public AudioSource audioSource;
	public AudioClip gameStartAndStop;

	// Use this for initialization
	void Start () {
		kowashitaTask.enabled = false;
		maxTask.enabled = false;
		breakedTask.enabled = false;
		gameStart.enabled = true;
		start.enabled = false;
		timeUp.enabled = false;
		audioSource = GetComponent<AudioSource> ();
	}
	
	// Update is called once per frame
	void Update () {
		//Debug.Log (moji);
		if (moji == true) {
			if (Input.GetKeyDown (KeyCode.F1)) {
				gameStart.enabled = !gameStart.enabled;
				time.enabled = !time.enabled;
				sunadokei.enabled = !sunadokei.enabled;

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
		moji = true;
		yield break;
	}


	public IEnumerator GameStartAndTimeUp(){
		if (TimeCounter.countStart == true) {
			image = start;
		} else {
			image = timeUp;
		}
		audioSource.PlayOneShot (gameStartAndStop);
		sunadokei.enabled = true;
		time.enabled = true;
		image.enabled = true;
		yield return new WaitForSeconds (2.0f);
		image.enabled = false;
		yield break;
	}

}
