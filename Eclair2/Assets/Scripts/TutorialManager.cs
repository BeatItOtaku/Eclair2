using UnityEngine;
using System.Collections;

/// <summary>
/// チュートリアルについて記述。
/// 内容は、 
/// 1・WASDキーで目的地まで移動してみよう。
/// 2・ターゲットの説明
/// 3・遠距離攻撃でモニュメントを破壊しよう。
/// 4・ボルトを打ち出してみよう。
/// 5・ETOをしてみよう。
/// 6・ETOで目的地まで移動
/// 7・ETOを使って3個一気にターゲットを破壊してみよう。
/// 
/// escキーを押すことでいつでもチュートリアルを終了してミニゲームに入ることができる。
/// </summary>
public class TutorialManager : MonoBehaviour {

	public PlayerControlManager pcm; //エクレアの操作が記述されたクラス。
	public FireManager fm; //エクレアの攻撃操作が記述されたクラス。

	public int tutorialCount = 1; //チュートリアルの進行を表す。
	public int passCount = 0;  //チュートリアル1番の通過地点をどれくらい通過したか。

	//チュートリアルで破壊するターゲット。
	public GameObject gideTarget; //ターゲット説明時に出てくるターゲット。その後壊す。
	public GameObject etoTarget; //ETOを使って3個一気に破壊するターゲット。

	public static bool uiClear = false;

	// Use this for initialization
	void Start () {
		
		pcm.eclairImmobile= false; //エクレアは動けない。
		fm.isShot = false; //エクレアは射撃ができない。
		fm.isAttack = false; //エクレアは打撃ができない。
		pcm.isBolt = false; //エクレアはボルト射出ができない。
		pcm.isEto = false; //エクレアはETOができない。
		pcm.isAvoid = false; //エクレアは回避ができない。

		gideTarget.SetActive (false);
		etoTarget.SetActive (false);

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
			//これからチュートリアルを行います。
					
			break;

		case 1:
			//光っている地点まで歩いてみましょう。(WASDキー・・・移動。マウス操作・・・カメラ移動。スペースキー・・・ジャンプ）
			pcm.eclairImmobile = false;
			break;

		case 2:
			//(移動が終了したら、ターゲットの説明。）
			//次に、ミニゲームの説明をします。
			//このミニゲームでは、制限時間内にターゲットを全て破壊すればクリアとなります。
			//ターゲットは、次の3種類です。
			//赤のターゲットは、10点。（ここで赤のモニュメントが登場）
			//青のターゲットは、30点。（ここで青のモニュメントが登場）
			//緑のターゲットは、50点、スコアに加算されます。（ここで緑のモニュメントが登場）
			//得点の高いターゲットほど、破壊するのに時間がかかります。
			uiClear = true;
			pcm.eclairStopping = true;
			break;

		case 3:
			//(ターゲットの説明がすんだら）ターゲットを破壊してみましょう！(ここで、遠距離攻撃解禁）
			//左クリック・・・遠距離攻撃
			pcm.eclairImmobile = false;
			fm.isShot = true;
			break;


		case 4:
			//(ターゲットをすべて破壊したら）
			//次に、『エトワール』という技を紹介します。
			//『エトワール』は、エクレアが高速移動できる技です。
			//まずは、エトワールをするために使う道具『ボルト』を出してみましょう。
			//(ここでボルトが撃てるようになる）
			//右クリック・・・ボルト射出
			pcm.isBolt = true;
			break;

		case 5:
			//次に、エトワールをしてみましょう。
			//スペースキー・・・エトワール
			pcm.isEto = true;
			break;

		case 6:
			//エトワールを使えば、ジャンプで行けない場所や遠い場所に行けます。
			//エトワールを使って、光っている地点まで行ってみましょう。
			break;

		case 7:
			//今度は、ETOを使ってターゲットを一気に3つ破壊してみましょう。
			//（ここで、青ターゲットが3つ出る、3つ一気に壊せない場合、復活する）
			break;
		

		case 8:
		    //これでチュートリアルは終了です。
		    //光っている地点まで移動すると、ミニゲームが開始されます。
			break;
		}
	}
}
