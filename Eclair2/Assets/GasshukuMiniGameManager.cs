using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
/// <summary>
/// 合宿で発表するミニゲームを扱うスクリプト。Canvas上にあるTimeCounter.cs、TaskCounter.csはこのスクリプトから変数を継承させたい。
/// </summary>
public class GasshukuMiniGameManager : MonoBehaviour {

	public TimeCounter tc;

	public  Text gameStart;
	public Text kowashitaTask;
	public Text maxTask;
	public Text breakedTask;

	// Use this for initialization
	void Start () {
		kowashitaTask.enabled = false;
		maxTask.enabled = false;
		breakedTask.enabled = false;


		gameStart.enabled = true;
	}
	
	// Update is called once per frame
	void Update () {
		
	}
		

	public IEnumerator GameRestartCoroutine(){
		PlayerControlManager.eclairImmobile = true;
		TimeCounter.countStart = false;
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
}
