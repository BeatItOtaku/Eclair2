using UnityEngine;
using System.Collections;

public class EventManager : MonoBehaviour {

	/*EventManagerはチュートリアルマップのイベントを管理。
    eventCount == 0  初期値（括弧内はトリガーとなる行動）
    1 ロックオンのチュートリアル（道を通る）
    2 カメラが銃を写す（ロックオンキーを押す）
    3 SBTのチュートリアル（銃を写したカメラがプレイヤーを写すように戻る）
    4 ETOのチュートリアル(敵を倒す）
    5 SBTスイッチのチュートリアル（ETOで壁を壊す）
    6 金網のチュートリアル（SBTスイッチで道を開ける）
    7 銃をゲット
    8 敵を倒す（壁を破壊する）
    9 工場内マップに移動する（道を通る）



*/
	//public AnimationQueue_Tutorial queueMove;

	public GameObject event2_bolt;
	public GameObject event2_sita;
	public GameObject event2_camera;
	public GameObject event3_zako;
	public GameObject event3_bolt;
	public GameObject event4_bolt;
	public GameObject event5_bolt;
	public GameObject event6_yajirushi;
	public GameObject event6_bolt;
	public GameObject event7_gun;
	public GameObject event7_EclairGun = null;
	public GameObject event7_yajirushi;
	public GameObject event7_gunParticle;
	public GameObject event8_zako;
	public GameObject event9_way;

	public GameObject HPGauge = null;

	public static int eventCount;

	private GameObject tutorialMove = null;

	Camera mainCamera;

	public AudioClip intro;
	public AudioClip loop;


	// Use this for initialization
	void Start () {
		//AnimationQueue = GameObject.Find ("Canvas");
		//queueMove.Queue ();
		eventCount = 11;


		event2_sita.SetActive (false);
		event3_zako.SetActive (false);
		event3_bolt.SetActive (false);

		event5_bolt.SetActive (false);

		event6_yajirushi.SetActive (false);
		event6_bolt.SetActive (false);
		event7_EclairGun = GameObject.Find ("Gun");
		event7_EclairGun.SetActive (false);
		event7_yajirushi.SetActive (false);
		event8_zako.SetActive (false);

	}
	
	// Update is called once per frame
	void Update () {
		if (event7_EclairGun == null) {
			event7_EclairGun = GameObject.Find ("Gun");
			if (eventCount < 7) {
				event7_EclairGun.SetActive (false);
			}
		}
		if (tutorialMove == null) {
			tutorialMove = GameObject.Find ("Tutorial_Move");
			if (tutorialMove != null) {
				tutorialMove.GetComponent<AnimationQueue_Tutorial> ().Queue ();
				InvokeQueue ("Tutorial_CamSensitivity");
			}
		}
		if (HPGauge == null)
			HPGauge = GameObject.Find ("HPGauge");

		if (mainCamera == null) {
			mainCamera = Camera.main;
			if (mainCamera != null) {
				mainCamera.GetComponent<BGMController> ().Play(intro,loop,0.7f);
			}
		}
	}

	public void EventCount(){
        Debug.Log("EventCount:" + eventCount + " to " + (eventCount + 1));
        eventCount++;
		switch (eventCount) {
		case 0:
			break;
		case 1:
			//ロックオンのチュートリアルが表示される 
			event2_sita.SetActive (true);
			InvokeQueue("Tutorial_CamSensitivity");
			GameObject.Find ("Tutorial_Move").GetComponent<AnimationQueue_Tutorial> ().Queue ();
			GameObject.Find ("Tutorial_LockOn").GetComponent<AnimationQueue_Tutorial> ().Queue ();
			break;
		case 2:
			GameObject.Find ("Tutorial_LockOn").GetComponent<AnimationQueue_Tutorial> ().Queue ();
			StartCoroutine (lockOnDelay ());
			break;
		case 3:
			event2_sita.SetActive (false);
			//SBTのチュートリアルが表示される
			GameObject.Find ("Hint_Enemy").GetComponent<AnimationQueue_InAndOut> ().Queue ();
			GameObject.Find ("Tutorial_Thunder").GetComponent<AnimationQueue_Tutorial> ().Queue ();
			event2_bolt.SetActive (false);

			event3_zako.SetActive (true);
			event3_bolt.SetActive (true);
			break;
		case 4:
			//ETOのチュートリアルが表示される
			GameObject.Find ("Hint_Enemy").GetComponent<AnimationQueue_InAndOut> ().Queue ();
			GameObject.Find ("Tutorial_Thunder").GetComponent<AnimationQueue_Tutorial> ().Queue ();
			GameObject.Find ("Tutorial_Etoile").GetComponent<AnimationQueue_Tutorial> ().Queue ();

			event3_bolt.SetActive (false);
			event4_bolt.tag = "Bolt";				

			break;
		case 5:
			//SBTスイッチのチュートリアル
			GameObject.Find ("Tutorial_Etoile").GetComponent<AnimationQueue_Tutorial> ().Queue ();
			GameObject.Find ("Tutorial_SBTSwitch").GetComponent<AnimationQueue_Tutorial> ().Queue ();
			event5_bolt.SetActive (true);
			break;

		case 6:
			//金網すりぬけチュートリアル
			GameObject.Find ("Tutorial_SBTSwitch").GetComponent<AnimationQueue_Tutorial> ().Queue ();
			event6_yajirushi.SetActive (true);
			event6_bolt.SetActive (true);
			event5_bolt.SetActive (false);
			break;
		case 7:
			//銃ゲット
			GameObject.Find ("Tutorial_Bolt").GetComponent<AnimationQueue_Tutorial> ().Queue ();
			event6_bolt.SetActive (false);
			event7_EclairGun.SetActive (true);
			event7_gun.SetActive (false);
			event7_yajirushi.SetActive (true);
			GameObject Pa = (GameObject)Instantiate (event7_gunParticle, event7_gun.transform.position, transform.rotation);
			Pa.transform.Rotate (-90, 0, 0);
			EventCount();
			break;
		case 8:
			//敵との戦闘

			event8_zako.SetActive(true);
			break;
		case 9:
			//工場へ突入
			GameObject.Find ("Tutorial_Bolt").GetComponent<AnimationQueue_Tutorial> ().Queue ();
			StartCoroutine (hideTutorialUIs());
			break;
		}
	}

	IEnumerator lockOnDelay(){
        Camera beforeCamera = Camera.main;
        beforeCamera.enabled = false;
        event2_camera.GetComponent<Camera>().enabled = true;
		yield return new WaitForSecondsRealtime (1.2f);
		event2_camera.GetComponent<Camera>().enabled = false;
        beforeCamera.enabled = true;
        //CameraChanger.Instance.ChangeTemporary(event2_camera, 1.2f);
		EventCount ();
	}

	private IEnumerator hideTutorialUIs(){
		string[] objNames = { "Hint_Enter","Tutorial_Bolt", "Tutorial_LockOn", "Tutorial_Thunder", "Tutorial_Etoile", "Tutorial_Bolt" };
		foreach(string obj in objNames){
			InvokeQueue (obj);
			yield return new WaitForSecondsRealtime (0.1f);
		}
		HPGauge.SetActive (true);
	}

	private void InvokeQueue(string obj){
		GameObject.Find (obj).GetComponent<AnimationQueueBase> ().Queue ();
	}

/*	public void EventCount(){
		eventCount++;
		if (eventCount == 1) 
		{//ロックオンのチュートリアルが表示される 
			GameObject.Find ("Tutorial_LockOn").GetComponent<AnimationQueue_Tutorial> ().Queue ();
		}
		if (eventCount == 2) 
		{ //ロックオンボタンを押した状態、銃にカメラが向く（予定）
			GameObject.Find ("Tutorial_LockOn").GetComponent<AnimationQueue_Tutorial> ().Queue ();
		}
		if (eventCount == 3) 
		{ //SBTのチュートリアルが表示される
			GameObject.Find("Hint_Enemy").GetComponent<AnimationQueue_InAndOut>().Queue();
			GameObject.Find ("Tutorial_Thunder").GetComponent<AnimationQueue_Tutorial> ().Queue ();
			event2_bolt.SetActive (false);

			event3_zako.SetActive (true);
			event3_bolt.SetActive (true);
		}
		if (eventCount == 4)
		{ //ETOのチュートリアルが表示される
			GameObject.Find("Hint_Enemy").GetComponent<AnimationQueue_InAndOut>().Queue();
			GameObject.Find ("Tutorial_Thunder").GetComponent<AnimationQueue_Tutorial> ().Queue ();
			GameObject.Find ("Tutorial_Etoile").GetComponent<AnimationQueue_Tutorial> ().Queue ();

			event3_bolt.tag = "Untagged";
				event4_bolt1.tag = "Bolt";				
				event4_bolt2.tag = "Bolt";				

		}
		if (eventCount == 5) 
		{//ETOで移動用のボルトが現れる
			GameObject.Find("Hint_Gun").GetComponent<AnimationQueue_InAndOut>().Queue();
			event5_bolt.SetActive (true);
		}
		if (eventCount == 6) 
		{ //ボルト射出のチュートリアルが表示される
			GameObject.Find("Hint_Gun").GetComponent<AnimationQueue_InAndOut>().Queue();
			GameObject.Find ("Tutorial_Etoile").GetComponent<AnimationQueue_Tutorial> ().Queue ();
			GameObject.Find ("Tutorial_Bolt").GetComponent<AnimationQueue_Tutorial> ().Queue ();
			event5_bolt.SetActive (false);
			event6_gun.SetActive (false);
			event6_EclairGun.SetActive (true);
			gunGet = true;
		}
		/*if (eventCount == 7) { //ボルトをさして、電撃で破壊する壁（予定）
GameObject.Find("Hint_Bolt").GetComponent<AnimationQueue_InAndOut>().Queue();

		}
		if (eventCount == 7/*8)
		{//雑魚との戦闘
			//GameObject.Find("Hint_Bolt").GetComponent<AnimationQueue_InAndOut>().Queue();
			event8_zako.SetActive (true);
			if (event8_zako == null) {
				EventCount ();
			}
		}
		if (eventCount ==8 /*9) 
		{//工場マップへ移動
			GameObject.Find("Hint_Enter").GetComponent<AnimationQueue_InAndOut>().Queue();
		}
	}*/

}
