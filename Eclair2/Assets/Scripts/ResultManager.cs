using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using System.Collections;
using System.Collections.Generic;

public class ResultManager : MonoBehaviour {

	/// <summary>
	/// ゲームが始まってからボス倒すまでの秒数
	/// </summary>
	public int usedTime;
	/// <summary>
	/// 倒した敵の数
	/// </summary>
	public int beatedEnemy;
	/// <summary>
	/// 発射したボルトの数
	/// </summary>
	public int launchedBolt;

	/// <summary>
	/// 理想の所要時間。usedTimeがこれより小さい場合、経過時間のスコアは正の値になる。
	/// </summary>
	public int optiTime = 600;

	/// <summary>
	/// 所要時間一秒あたりに変化するスコアの量。
	/// </summary>
	public int timeScoreFactor = 100;

	/// <summary>
	/// 敵を一個倒すと増える倒した敵スコアの量。
	/// </summary>
	public int enemyScoreFactor = 100;

	/// <summary>
	/// ボルトを一個撃つと増えるスコアの量。マイナスの値を指定すると減る。
	/// </summary>
	public int boltScoreFactor = -10;

	/// <summary>
	/// 経過時間のランク判定の閾値。単位は秒。少ないほど高評価。
	/// </summary>
	public int[] timeRankThreshold = {300,480,660};
	/// <summary>
	/// 倒した敵のランク判定の閾値。多いほど評価。
	/// </summary>
	public int[] enemyRankThreshold = {40,30,20};
	/// <summary>
	/// 撃ったボルトのランク判定の閾値。少ないほど高評価。
	/// </summary>
	public int[] boltRankThreshold = {30,60,90};
	/// <summary>
	/// 総合スコアのランク判定の閾値。多いほど高評価。
	/// </summary>
	public int[] totalRankThreshold = {2000,3000,4000};

    public GameObject canvas;

	public AnimationQueue_Time timeText;
	public AnimationQueue_Rank timeRank;
	public AnimationQueue_Number timeScore;
	public AnimationQueue_Number enemyText;
	public AnimationQueue_Rank enemyRank;
	public AnimationQueue_Number enemyScore;
	public AnimationQueue_Number boltText;
	public AnimationQueue_Rank boltRank;
	public AnimationQueue_Number boltScore;
	public AnimationQueue_Number totalScore;
	public AnimationQueue_Rank totalRank;
	public Button nextButton;


	private float time = 0;
	private int cursor = 0;

	//かなり頭悪いコード書くけど許して…！
	KeyValuePair<float,string>[] timeline = {
		new KeyValuePair<float,string>(0.5f,"Frame"),
		new KeyValuePair<float,string>(0.4f,"Title"),
		new KeyValuePair<float,string>(0.5f,"TimeLabel"),
		new KeyValuePair<float,string>(0.5f,"TimeText"),
		new KeyValuePair<float,string>(0.5f,"TimeRank"),
		new KeyValuePair<float,string>(0.2f,"TimeScore"),
		new KeyValuePair<float,string>(0.5f,"EnemyLabel"),
		new KeyValuePair<float,string>(0.5f,"EnemyText"),
		new KeyValuePair<float,string>(0.5f,"EnemyRank"),
		new KeyValuePair<float,string>(0.2f,"EnemyScore"),
		new KeyValuePair<float,string>(0.5f,"BoltLabel"),
		new KeyValuePair<float,string>(0.5f,"BoltText"),
		new KeyValuePair<float,string>(0.5f,"BoltRank"),
		new KeyValuePair<float,string>(0.2f,"BoltScore"),
		new KeyValuePair<float,string>(1.0f,"Horizon"),
		new KeyValuePair<float,string>(0.3f,"TotalLabel"),
		new KeyValuePair<float,string>(0.5f,"TotalText"),
		new KeyValuePair<float,string>(1.8f,"TotalRank"),
		new KeyValuePair<float,string>(1.0f,"NextButton"),
	};

	// Use this for initialization
	void Start () {
        //CameraController.cursorIsLocked = false;
        setResult((int)ScoreCounter.TimeSinceStarted, ScoreCounter.BeatedEnemyCount, ScoreCounter.LaunchedBoltCount);
	}
	
	// Update is called once per frame
	void Update () {
		time += Time.deltaTime;
        if (timeline.Length == cursor)
        {
            CameraController.cursorIsLocked = false;
            return;
        }
		else if (timeline [cursor].Key < time) {
			Debug.Log (cursor + ":" + timeline [cursor].Value);
			canvas.transform.FindChild(timeline [cursor].Value).GetComponents<AnimationQueueBase>()[0].Queue ();//抽象クラス最高！
			time = 0;
			cursor++;
		}
	}

	public void setResult(int time,int enemy, int bolt){
		usedTime = time;
		beatedEnemy = enemy;
		launchedBolt = bolt;

		timeText.time = usedTime;
		timeRank.rank = calicurateRankAscending (usedTime, timeRankThreshold);
		timeScore.number = (optiTime - usedTime) * timeScoreFactor;

		enemyText.number = beatedEnemy;
		enemyRank.rank = calicurateRankDescending (beatedEnemy, enemyRankThreshold);
		enemyScore.number = beatedEnemy * enemyScoreFactor;

		boltText.number = launchedBolt;
		boltRank.rank = calicurateRankAscending (launchedBolt, boltRankThreshold);
		boltScore.number = launchedBolt * boltScoreFactor;

		totalScore.number = timeScore.number + enemyScore.number + boltScore.number;
		totalRank.rank = calicurateRankDescending (totalScore.number, totalRankThreshold);
	}

	public void setOnNextButtonClicked(Button.ButtonClickedEvent e){
		nextButton.onClick = e;
	}

	/// <summary>
	/// 低いほど高評価な指標のランクを判定します。
	/// </summary>
	/// <returns>The rank ascending.</returns>
	/// <param name="score">Score.</param>
	/// <param name="threshold">閾値。配列サイズは3</param>
	private AnimationQueue_Rank.Ranks calicurateRankAscending(int score, int[] threshold){
		if (score < threshold [0])
			return AnimationQueue_Rank.Ranks.S;
		else if (score < threshold [1])
			return AnimationQueue_Rank.Ranks.A;
		else if (score < threshold [2])
			return AnimationQueue_Rank.Ranks.B;
		else 
			return AnimationQueue_Rank.Ranks.C;
	}
	/// <summary>
	/// 高いほど高評価な指標のランクを判定します。
	/// </summary>
	/// <returns>The rank descending.</returns>
	/// <param name="score">Score.</param>
	/// <param name="threshold">閾値。配列サイズは3</param>
	private AnimationQueue_Rank.Ranks calicurateRankDescending(int score, int[] threshold){
		if (score > threshold [0])
			return AnimationQueue_Rank.Ranks.S;
		else if (score > threshold [1])
			return AnimationQueue_Rank.Ranks.A;
		else if (score > threshold [2])
			return AnimationQueue_Rank.Ranks.B;
		else 
			return AnimationQueue_Rank.Ranks.C;
	}

	public void GoToTitle(){
        //Application.LoadLevel (0);
		MapLoader.Instance.GoToTitle();
	}
}
