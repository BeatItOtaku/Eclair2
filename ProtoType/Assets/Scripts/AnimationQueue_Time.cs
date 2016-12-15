using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class AnimationQueue_Time : AnimationQueueBase {

	private Text text;
	private int currentTime = 0;
	/// <summary>
	/// 単位は秒です。
	/// </summary>
	public int time = 80;
	public int step = 1;

	void Start () {
		text = GetComponent<Text> ();
		text.enabled = false;
	}

	void Update () {
		if (text.enabled && currentTime < time) {
			currentTime += step;
			setTime (currentTime);
		} else if(currentTime > time) {
			setTime (time);
		}
	}

	public override void Queue(){
		text.enabled = true;
		text.text = "0:00";
	}

	private void setTime(int t){
		int minute = t / 60;//int同士の割り算は小数点を切り捨てられて整数になるよ
		int second = t % 60;//%は割り算のあまりだよ
		text.text = minute + ":" + second.ToString("00");
	}
}
