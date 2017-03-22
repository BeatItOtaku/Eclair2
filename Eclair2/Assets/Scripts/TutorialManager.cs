using UnityEngine;
using System.Collections;

/// <summary>
/// チュートリアルについて記述。
/// 内容は、 
/// 1・WASDキーで目的地まで移動してみよう。
/// 2・モニュメントの説明
/// 3・近接攻撃でモニュメントを破壊しよう。
/// 4・遠距離攻撃でモニュメントを破壊しよう。
/// 5・ボルトを打ち出してみよう。
/// 6・ETOをしてみよう。
/// 7・ETOを使って3個一気にモニュメントを破壊してみよう。
/// 
/// escキーを押すことでいつでもチュートリアルを終了してミニゲームに入ることができる。
/// </summary>
public class TutorialManager : MonoBehaviour {

	public PlayerControlManager pcm; //エクレアの操作が記述されたクラス。
	public FireManager fm; //エクレアの攻撃操作が記述されたクラス。

	public int tutorialCount = 1; //チュートリアルの進行を表す。
	public int passCount = 0;  //チュートリアル1番の通過地点をどれくらい通過したか。

	//チュートリアルで破壊するモニュメント。番号はチュートリアルカウントの値。
	public GameObject monument2to3; 
	public GameObject monument4;
	public GameObject monument6;
	public GameObject monument7;

	// Use this for initialization
	void Start () {
		
		pcm.eclairImmobile= false; //エクレアは動けない。
		fm.isShot = false; //エクレアは射撃ができない。
		fm.isAttack = false; //エクレアは打撃ができない。
		pcm.isBolt = false; //エクレアはボルト射出ができない。
		pcm.isEto = false; //エクレアはETOができない。
		pcm.isAvoid = false; //エクレアは回避ができない。


		//モニュメント非表示
		monument2to3.SetActive(false);
		monument4.SetActive(false);
		monument6.SetActive(false);
		monument7.SetActive(false);
	
	}
	
	// Update is called once per frame
	void Update () {
		if(Input.GetKeyDown("escape")){
			//チュートリアルを終了するかどうかの確認ウィンドウが出た後、チュートリアル終了できる
		}

		Debug.Log (tutorialCount);
	
	}

	public void TurotialCount(){
		tutorialCount++;
		switch (tutorialCount) {

		case 0:
			//電撃少女エクレア（ミニゲーム名）へようこそ！
					
			break;

		case 1:
			//光っている地点まで歩いてみましょう。
			pcm.eclairImmobile = false;
			break;

		case 2:
			//モニュメントの説明（エクレアは動けない）
			pcm.eclairStopping = true;
			monument2to3.SetActive(true);
			break;

		case 3:
			//(モニュメントの説明がすんだら）モニュメントを破壊してみよう(近接攻撃で数個）
			pcm.eclairImmobile = false;
			fm.isAttack = true;
			break;

		case 4:
			//一定距離離れていると射撃攻撃、近いと近接攻撃になります。
			fm.isShot = true;
			monument4.SetActive(true);
			break;

		case 5:
			//エトワールの紹介、まずはボルトを撃ってみましょう。
			pcm.isBolt = true;
			break;

		case 6:
			//エトワールをしてみましょう。
			pcm.isEto = true;
			monument6.SetActive(true);
			break;

		case 7:
			//エトワールでモニュメントを一気に3つ破壊してみよう。
			monument7.SetActive(true);
			break;

		case 8:
			//チュートリアル終了、ミニゲームに移る。
			break;
		}
	}
}
