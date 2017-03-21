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

	public PlayerControlManager pcm;
	public FireManager fm;
	private int tutorialCount = 0;

	// Use this for initialization
	void Start () {
		pcm.eclairImmobile= true; //エクレアは動けない。
		fm.isShot = false; //エクレアは射撃ができない。
		fm.isAttack = false; //エクレアは打撃ができない。
		pcm.isBolt = false; //エクレアはボルト射出ができない。
		pcm.isEto = false; //エクレアはETOができない。
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	private void TurotialCount(){
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
			pcm.eclairImmobile = true;
			break;

		case 3:
			//(モニュメントの説明がすんだら）モニュメントを破壊してみよう
			pcm.eclairImmobile = false;
			fm.isAttack = true;
			break;

		case 4:
			//一定距離離れていると射撃攻撃、近いと近接攻撃になります。
			fm.isShot = true;
			break;

		case 5:
			//エトワールの紹介、まずはボルトを撃ってみましょう。
			pcm.isBolt = true;
			break;

		case 6:
			//エトワールをしてみましょう。
			pcm.isEto = true;
			break;

		case 7:
			//エトワールでモニュメントを一気に3つ破壊してみよう。
			break;

		case 8:
			//チュートリアル終了、ミニゲームに移る。
			break;
		}
	}
}
