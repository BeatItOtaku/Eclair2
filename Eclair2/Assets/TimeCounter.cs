using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class TimeCounter : MonoBehaviour {

	public PlayerControlManager pcm;

	public float defaultTime = 180;

	[System.NonSerialized]
	public float time;
	private float remainingTime;

	public GameManager gm;

	private bool isCounting = false;

	//GameManagerで使ってるよ
	public System.Action OnTimeUp;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if (!isCounting)
			return;

		if (gm.monumentCount != gm.allMonument) {
			if (time > 0) {
				time -= Time.deltaTime;
				time = Mathf.Max (time, 0.0f);
				GetComponent<UnityEngine.UI.Text>().text = ((int)time).ToString();
			} else {
				gm.totalScore = gm.score;
				//Debug.Log ("TimeUp");
				OnTimeUp ();
				StopCount ();
				//ゲーム終了
			}
		}

		if (gm.monumentCount == gm.allMonument) {	
			remainingTime = time;
			gm.totalScore = gm.score + remainingTime * 10;
			OnTimeUp ();
			StopCount ();
			//ゲーム終了
		}
	}

	public void StartCount(){
		//pcm.eclairStopping = false;
		isCounting = true;
		time = defaultTime;
	}

	public void StopCount(){
		isCounting = false;
		time = 0;
	}
}
