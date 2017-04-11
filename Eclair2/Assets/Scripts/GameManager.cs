using UnityEngine;
using System.Collections;
using wararyo.EclairCueMaker;

public class GameManager : MonoBehaviour {

	public int score = 0;
	public float totalScore;
	public int monumentCount = 0;
	public int allMonument = 120;

	public TimeCounter timeCounter;
	public CueScenePlayer cueScenePlayer;
	public CueScene TimeUpCueScene;

	public float time = 120;
	private float remainingTime;

	// Use this for initialization
	void Start () {
		timeCounter.OnTimeUp += OnTimeCounterTimeUp;
	}
	
	// Update is called once per frame
	void Update () {

	
	}

	void OnTimeCounterTimeUp(){
		cueScenePlayer.Play (TimeUpCueScene);
	}
}
