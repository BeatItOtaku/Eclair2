using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;

public class BossSceneManager : AnimationQueueManager {

    //CameraChanger cameraChanger = null;
    public BGMController bgm;
    public AudioClip bossBGMIntro;
    public AudioClip bossBGMLoop;
    public AudioClip resultBGMIntro;
    public AudioClip resultBGMLoop;

    public GameObject pointLight;

    public Vector3 playerPositionOnResult;
    public Vector3 playerRotationOnResult;

    private AsyncOperation result;

    public BossMoveManager moveManager;

    private GameObject canvas;
    private GameObject player;

	// Use this for initialization
	protected override void Start () {
        base.Start();
        result = SceneManager.LoadSceneAsync("Result", LoadSceneMode.Additive);
        result.allowSceneActivation = false;
    }
	
	// Update is called once per frame
	protected override void Update () {
        base.Update();
	}

    protected override void OnCursorChanged(int before, int after)
    {
        base.OnCursorChanged(before, after);
        Debug.Log("BossSceneManager:" + after);
        switch (after)
        {
            case 1://カメラアニメーションスタート
                canvas = GameObject.Find("Canvas");
                player = GameObject.FindGameObjectWithTag("Player");
                canvas.SetActive(false);
                break;
            case 2://尻尾ランプつく
                moveManager.SBTSwitchPopOnAwake();
                break;
            case 3://BGMとボスAwake
                moveManager.BossAwake();
                bgm = GameObject.Find("Main Camera").GetComponent<BGMController>();
                bgm.Play(bossBGMIntro, bossBGMLoop, 1);
                break;
            case 4://戦いが始まる
                CameraChanger.CurrentCamera = GameObject.Find("Main Camera").GetComponent<Camera>();
                canvas.SetActive(true);
                moveManager.BossAwaken();
                break;
            case 5://倒された直後
                canvas.SetActive(false);
                player.GetComponent<Rigidbody>().isKinematic = true;
                player.GetComponent<Animator>().applyRootMotion = false;
                PlayerControl.EclairImmobile = true;
                player.transform.position = playerPositionOnResult;
                player.transform.rotation = Quaternion.Euler(playerRotationOnResult);
                bgm.Stop();
                break;
            case 6:
                OnBossDied();
                break;
            case 7:
                RenderSettings.ambientIntensity = 1.0f;
                player.transform.position = playerPositionOnResult;
                player.transform.rotation = Quaternion.Euler(playerRotationOnResult);
                pointLight.SetActive(true);
                result.allowSceneActivation = true;
                break;
        }
    }

    public void OnBossDied()
    {
        //bgm = Camera.main.GetComponent<BGMController>();
        bgm.Play(resultBGMIntro, resultBGMLoop, 1);
    }

}
