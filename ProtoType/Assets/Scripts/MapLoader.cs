using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;

public class MapLoader : MonoBehaviour
{
    private static MapLoader mInstance;

    public AsyncOperation MapAsync;
	public AsyncOperation ZakoMapASync;
	public AsyncOperation BossMapASync;

    private bool startGameFlag = false;

	public bool isLoaded{
		get{
			return MapAsync.progress >= 0.9f;
		}
	}

    private MapLoader()
    {
        //startMapLoad();
        //Debug.Log("Create SampleSingleton instance.");
    }

    public static MapLoader Instance
    {

        get
        {

            if (mInstance == null)
            {
                GameObject go = new GameObject("MapLoader");
                mInstance = go.AddComponent<MapLoader>();
            }

            return mInstance;
        }
    }

    public void startMapLoad()
    {
        if (MapAsync == null)
        {
            MapAsync = SceneManager.LoadSceneAsync("BiO Map");//, LoadSceneMode.Additive);
            MapAsync.allowSceneActivation = false;
        }
    }

    public void startGame()
    {
        startGameFlag = true;
    }

    void Start()
    {
        DontDestroyOnLoad(this);
        //startMapLoad();
    }

    void Update()
    {
        //Debug.Log(MapAsync.progress);
        if(startGameFlag && MapAsync.progress >= 0.9f)
        {
            //Debug.Log("aho");
            MapAsync.allowSceneActivation = true;
			PlayerControl.EclairImmobile = false;
            SceneManager.LoadSceneAsync("tougou",LoadSceneMode.Additive);
            ScoreCounter.GameStarted();
			//SceneManager.LoadSceneAsync ("Boss Map", LoadSceneMode.Additive);
			//ZakoMapASync = SceneManager.LoadSceneAsync ("ZakoMap");
			//ZakoMapASync.allowSceneActivation = false;
            startGameFlag = false;
            MapAsync = null;
        }

		if (Input.GetKey (KeyCode.W) || Input.GetKey (KeyCode.A) || Input.GetKey (KeyCode.S) || Input.GetKey (KeyCode.D)) {
			if(InputManager.isGamePad) InputManager.isGamePad = false;
		} else if (Mathf.Abs (Input.GetAxisRaw ("Horizontal")) > 0.4f || Mathf.Abs (Input.GetAxisRaw ("Vertical")) > 0.4f) {
			if(!InputManager.isGamePad) InputManager.isGamePad = true;//WASDが押されてないのに移動してる => ゲームパッド(の左スティック)を触ってる
		}

		if (Input.GetKey (KeyCode.E) && Input.GetKey (KeyCode.S) && Input.GetKey (KeyCode.C)) {
			if (CameraController.cursorIsLocked)
				ReloadScene ();
			else 
				Reset ();
		}
    }

	//タイトル画面に戻るよ
	public static void Reset(){
		SceneManager.LoadScene ("Title");
	}

    void OnApplicationQuit()
    {
        MapAsync = null;//Debug.Log("Application ending after " + Time.time + " seconds");
    }

	public void startFactory(){
        if (ZakoMapASync != null)
        {
            ZakoMapASync.allowSceneActivation = true;
            ZakoMapASync = null;
        }
        else
        {
            SceneManager.LoadSceneAsync("ZakoMap");
        }
		SceneManager.LoadSceneAsync ("tougou", LoadSceneMode.Additive);
		//BossMapASync = SceneManager.LoadSceneAsync ("Boss Map");
		//BossMapASync.allowSceneActivation = false;

	}

	public void startBoss(){
        if (BossMapASync != null)
        {
            BossMapASync.allowSceneActivation = true;
            BossMapASync = null;
        }
        else
        {
            SceneManager.LoadSceneAsync("Boss Map");
        }
		SceneManager.LoadSceneAsync ("tougou", LoadSceneMode.Additive);
	}

    public static void ReloadScene()
    {
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
	    SceneManager.LoadSceneAsync ("tougou", LoadSceneMode.Additive);
    }

    public void GameOver()
    {
        SceneManager.LoadSceneAsync("GameOver", LoadSceneMode.Additive);
    }

	public void GoToTitle(){
		//Application.LoadLevel (0);
		StartCoroutine(GoToTitie_raw());
	}

	IEnumerator GoToTitie_raw()
	{
		AsyncOperation async =  SceneManager.LoadSceneAsync("Credit");
		async.allowSceneActivation = false;
		yield return new WaitForSecondsRealtime(0.5f);
		async.allowSceneActivation = true;
	}

}
