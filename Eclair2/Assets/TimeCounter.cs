﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
/// <summary>
/// 合宿用ミニゲームの制限時間を管理するスクリプト。
/// </summary>
public class TimeCounter : MonoBehaviour {

	public GasshukuMiniGameManager gmgm;

	public float maxTime = 100;
	public float currentTime;

	public static bool countStart = false;//trueで制限時間スタート

	private int task;
	private int maxTask = 31;

	// Use this for initialization
	void Start () {
		currentTime = maxTime;
		GetComponent<UnityEngine.UI.Text>().text = maxTime.ToString();
	}
	
	// Update is called once per frame
	void Update () {
		Debug.Log (countStart);

		if (countStart == true) {
			
			currentTime -= Time.deltaTime;

			// マイナス値にならないようにしている
			currentTime = Mathf.Max (currentTime, 0.0f);
			GetComponent<UnityEngine.UI.Text> ().text = ((int)currentTime).ToString ();
		}

		if (currentTime <= 0) {
			if (task == maxTask) {
				StartCoroutine(gmgm.GameRestartCoroutine ());
			}
		}
	}
}
