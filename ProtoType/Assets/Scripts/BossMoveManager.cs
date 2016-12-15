using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;

public class BossMoveManager : MonoBehaviour {

	//エクレア
	public GameObject player = null;
	public GameObject playerPositionY;

	//ボスの体とエフェクト
	public GameObject boss;
	public GameObject bossCenter;
	public GameObject leftFoot;
	public GameObject rightFoot;
	public GameObject bossMuzzle;
	public GameObject bossBarret;
	public GameObject muzzleFrash;
	public GameObject bossTail;
	public GameObject bossSmoke1;//エフェクト
	public GameObject bossSmoke2;//エフェクト
    public GameObject bossSmokeTail;
	public GameObject fire;//エフェクト
	public GameObject exp;
	public GameObject bossKilled;//爆発する
	public GameObject hint;

	public Transform explosion1;
	public Transform explosion2;
	public Transform explosion3;

	private bool exp1;
	private bool exp2;
	private bool exp3;

    public GameObject haloGreen;
    public GameObject haloRed;

    public BossSceneManager sceneManager;

    //public GameObject bossKilledCameraPosition;
    //public Transform bossCamera;

    private bool bossShot;
	public static bool bossAttacked = false;

	public static int BossAttackedCount = 1;

    public bool isDying = false;

    public AudioClip soundRoaring;
    public AudioClip soundShot;
    public AudioClip soundWalk;
    public AudioClip soundExplosion;
    public AudioClip soundSBTSwitch;

    private Vector3 playerV;
	private Vector3 playerHeightV;
	private Vector3 leftFootV;
	private Vector3 rightFootV;
	private Vector3 centerV;
	private Vector3 tailV;

	private float leftDistance; //ボスの左足からプレイヤーまでの距離
	private float rightDistance; //ボスの右足からプレイヤーまでの距離
	private float centerDistance; //ボスの中心からプレイヤーまでの距離
	private float tailDistance; //ボスの尻尾の先からプレイヤーまでの距離

	private float difDistanceLR; //leftDistance,rightDistanceの差
	private float difDistanceCT; //centerDistance,tailDistanceの差

	private float shotInterval =0;
	private float shotIntervalMax = 0.1f;
    private float shotStartIntervalMax = 0.5f;
    private float BossShotDelay = 0.8f;

	private float playerHeightF;

	public static float waitTime = 0;
	private float dethTime = 0;
	private float hintTime = 0;

	private bool wait = false;

	private Animator bossAnim;
	private int phId;

    private bool bossAwaken = false;

    private AudioSource audio;

    private Vector3 neutralPosition;
    private Quaternion neutralRot;


	// Use this for initialization
	void Start () {
		player = GameObject.FindWithTag ("Player");
		bossAnim = boss.GetComponent<Animator> ();
		phId = Animator.StringToHash ("PlayerHeight");
		bossShot = false;
		bossSmoke1.SetActive (false);
		bossSmoke2.SetActive (false);
		bossSmokeTail.SetActive (false);
		fire.SetActive (false);
        exp1 = false;
		exp2 = false;
		exp3 = false;
		if(hint != null) hint.SetActive (false);
		hintTime = 0;
        GetComponent<Animator>().Play("BossSleeping");
        audio = GetComponent<AudioSource>();
        neutralPosition = transform.position;
        neutralRot = transform.rotation;
	}
	
	// Update is called once per frame
	void Update () {

        if (!bossAwaken) return;

		//Debug.Log (playerHeightF);
		playerV = player.transform.position;
		playerHeightV = playerPositionY.transform.position;
		leftFootV = leftFoot.transform.position;
		rightFootV = rightFoot.transform.position;
		centerV = bossCenter.transform.position;
		tailV = bossTail.transform.position;

		leftDistance = Vector3.Distance (playerV, leftFootV);
		rightDistance = Vector3.Distance (playerV, rightFootV);
		difDistanceLR = leftDistance - rightDistance;

		centerDistance = Vector3.Distance (playerV, centerV);
		tailDistance = Vector3.Distance (playerV, tailV);
		difDistanceCT = centerDistance - tailDistance;

		playerHeightF = Vector3.Distance (playerV, playerHeightV);

		hintTime += Time.deltaTime;

		if (hintTime >= 60) {
			if(hint != null) hint.SetActive (true);
		}
		Debug.Log (hintTime);

        //ボスの動き

        if (!bossAnim.GetBool("BossShot"))
        {

            //右回転
            if (difDistanceLR > 2.0f && waitTime == 0)
            {
                bossShot = false;
                //Debug.Log ("right");
                bossAnim.SetBool("Rotation", true);
                bossAnim.SetBool("Walk", false);
                transform.Rotate(Vector3.up * Time.deltaTime * 32 * BossAttackedCount);
                transform.position += transform.forward * Time.deltaTime * 0;
                waitTime = 0;
            }


            //左回転
            else if (difDistanceLR < -2.0f && waitTime == 0)
            {
                bossShot = false;
                //Debug.Log ("left");
                bossAnim.SetBool("Rotation", true);
                bossAnim.SetBool("Walk", false);
                transform.Rotate(Vector3.down * Time.deltaTime * 32 * BossAttackedCount);
                transform.position += transform.forward * Time.deltaTime * 0;
                waitTime = 0;
            }

            //直進

            else if (centerDistance > 8.0f && waitTime == 0)
            {
                if (difDistanceCT < 0)
                {
                    //Debug.Log ("forward");
                    bossAnim.SetBool("Walk", true);
                    bossAnim.SetBool("Rotation", false);
                    //transform.position += transform.forward * Time.deltaTime *3;
                    waitTime = 0;
                }

            }

            //エクレアが真後ろにいるとき反転してくる
            if (difDistanceCT > 0)
            {
                bossShot = false;
                wait = true;
            }
            if (wait == true)
            {
                waitTime += Time.deltaTime;
                if (waitTime > 2f / BossAttackedCount)
                {
                    transform.Rotate(Vector3.down * Time.deltaTime * 40 * BossAttackedCount);
                    bossAnim.SetBool("Rotation", true);
                    //Debug.Log("WaitTime" + waitTime);
                }
            }
            if (difDistanceLR < -4.0f || difDistanceLR > 4.0f)
            {
                transform.Rotate(Vector3.down * Time.deltaTime * 0);
                waitTime = 0;
                //Debug.Log("WaitTime" + waitTime);
                wait = false;
            }

            //ボスの上方にプレイヤーが来たときボスは歩く
            if (playerHeightF >= 10.0f)
            {
                bossAnim.SetBool("Rotation", false);
                bossAnim.SetBool("Walk", true);
                bossAnim.SetBool("BossShot", false);
            }

        }

        //ボスの砲撃
        //ボスとプレイヤーの位置関係を取得するスクリプト
        //Debug.Log(centerDistance + ":" + difDistanceLR + ":" + difDistanceCT);
        /*if (centerDistance >= 8.0f && Mathf.Abs (difDistanceLR) < 2.0f && difDistanceCT < 0) {
			bossShot = true;
			bossAnim.SetBool ("Rotation", false);
			bossAnim.SetBool ("Walk", false);
			shotInterval += Time.deltaTime;
		} else {
			bossAnim.SetBool ("BossShot", false);
			bossShot = false;
		}

		if (bossShot == true) {
			if (shotInterval > shotIntervalMax) {
				shotInterval = 0;
				bossAnim.SetBool ("BossShot", true);
				bossAnim.SetFloat (phId, playerHeightF);
				Instantiate (bossBarret, bossMuzzle.transform.position, bossMuzzle.transform.rotation);
				Instantiate (muzzleFrash, bossMuzzle.transform.position, bossMuzzle.transform.rotation);
			}
		}*/
        //Debug.Log (bossShot);

        bossShot =  (32 >= centerDistance && centerDistance >= 8.0f && Mathf.Abs(difDistanceLR) < 2.0f && difDistanceCT < 0) ;
        if (bossShot) StartCoroutine(ShotManagement());

        //ボスが被弾したとき
        if (bossAttacked == true)
        {
            bossAnim.SetTrigger("BossAttacked");
            bossAttacked = false;
            bossAnim.SetBool("Rotation", false);
            bossAnim.SetBool("Walk", false);
            bossAnim.SetBool("BossShot", false);
            //BossAttackedCount++;
            Debug.Log("attack");
            waitTime = 0;
            bossAttacked = false;

        }
		if (BossAttackedCount == 2)
		{
            bossSmokeTail.SetActive(true);
			bossSmoke1.SetActive (true);
            haloRed.SetActive(true);
            setBossSpeed(1.4f);
		}
		if (BossAttackedCount == 3)
		{
			bossSmoke2.SetActive (true);
			fire.SetActive (true);
            haloGreen.SetActive(false);
            setBossSpeed(1.8f);
        }
        //ボスが倒されたとき
        if (BossAttackedCount >= 4)//BossAttackedCountの初期値は1、3回攻撃するとボス撃破
		{
			PlayerControl.EclairImmobile = true;
            //Camera.main.GetComponent<BGMController>().Stop();
            setBossSpeed(1);
			transform.Rotate (Vector3.up * 0);
			transform.position += transform.forward * Time.deltaTime * 0;
			Debug.Log ("kill");
			dethTime += Time.deltaTime;
			bossAnim.SetTrigger ("BossKilled");
			Debug.Log (dethTime);

			if (dethTime >= 2.6f && exp1 == false) {
				Instantiate (exp, explosion1.position, explosion1.rotation);
				exp1 = true;
			} else if (dethTime >= 4.35f && exp1 ==true && exp2 == false) {
				Instantiate (exp, explosion2.position, explosion2.rotation);
				exp2 = true;
			} else if (dethTime >= 4.6f && exp1 == true && exp2 == true && exp3 == false) {
				Instantiate (exp, explosion3.position, explosion3.rotation);
				exp3 = true;
			}

            if (dethTime >= 5.4f)
            {
                //sceneManager.OnBossDied();
                CameraController.cursorIsLocked = false;
                Instantiate(bossKilled, boss.transform.position, boss.transform.rotation);
                Camera.current.GetComponent<AudioSource>().PlayOneShot(soundExplosion);
                gameObject.SetActive(false);
                //bossKilledCameraPosition.transform.position = bossCamera.position;
                //bossKilledCameraPosition.transform.LookAt (bossCamera);
                //PlayerControl.EclairImmobile = true;
            }

            if(BossAttackedCount >= 4 && isDying == false)
            {
                onBossStartDying();
                ScoreCounter.EnemyBeated();
                sceneManager.Invoke();
                isDying = true;
            }


		}
	}

    private void setBossSpeed(float speed)
    {
        bossAnim.speed = speed;
    }

    public void BossAwake()
    {
        bossAnim.SetTrigger("Awake");
    }
    public void SBTSwitchPopOnAwake()
    {
        haloGreen.SetActive(true);
        audio.PlayOneShot(soundSBTSwitch);
    }
    public void BossAwaken()
    {
        bossAwaken = true;
    }

    public void BossWalkSound()
    {
        audio.PlayOneShot(soundWalk);
    }

    public void Roar()
    {
        audio.PlayOneShot(soundRoaring);
    }
    public void onBossStartDying()
    {
        transform.position = neutralPosition;
        transform.rotation = neutralRot;
    }

    private bool shotManagementIsRunning = false;
    IEnumerator ShotManagement()
    {
        if (shotManagementIsRunning) yield break;

        shotManagementIsRunning = true;

        float shotTimeCursor = 0;
        while (shotTimeCursor < shotStartIntervalMax)
        {
            if (!bossShot)
            {
                shotManagementIsRunning = false;
                yield break;
            }
            shotTimeCursor += Time.deltaTime;
        }
        //0.5秒間ずっとBossShotがtrueだったときだけ以降の処理は実行される
        shotTimeCursor = 0;
        bossAnim.SetBool("Rotation", false);
        bossAnim.SetBool("Walk", false);
        bossAnim.SetBool("BossShot", true);
        //yield return new WaitForSeconds(BossShotDelay);
        while (bossShot)//bossShotがtrueである間ずっと弾を撃ち続ける
        {
            AnimatorStateInfo stateInfo = bossAnim.GetCurrentAnimatorStateInfo(0);
            if (stateInfo.IsName("BossShot"))
            {
                LaunchShot(bossMuzzle.transform.position, bossMuzzle.transform.rotation);
                bossAnim.SetFloat(phId, playerHeightF);
                audio.PlayOneShot(soundShot);
                yield return new WaitForSeconds(shotIntervalMax);
            }
            else if (stateInfo.IsName("BossShotEnd"))
            {
                break;
            }
            else
            {
                yield return null;
            }
        }
        bossAnim.SetBool("BossShot", false);
        shotManagementIsRunning = false;
        yield break;
    }



    void LaunchShot(Vector3 position,Quaternion rotation)
    {
        Instantiate(bossBarret, position, rotation);
        Instantiate(muzzleFrash, position, rotation);
    }
}
