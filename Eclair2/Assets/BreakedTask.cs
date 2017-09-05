using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BreakedTask : MonoBehaviour {

	public int maxTask= 30;
	public int breakedTask= 0;
	public int currentBreakedTask= 0;//現在のフレームの壊したタスク数を管理

	public AudioSource audioSource;
	public AudioClip breakSoud;

	// Use this for initialization
	void Start () {
		GetComponent<UnityEngine.UI.Text>().text = maxTask.ToString();
		audioSource = GetComponent<AudioSource> ();
	}
	
	// Update is called once per frame
	void Update () {
		GetComponent<UnityEngine.UI.Text>().text = breakedTask.ToString();
		if (breakedTask != currentBreakedTask) {
			audioSource.PlayOneShot (breakSoud);
		}

		breakedTask = currentBreakedTask;
	}
}
