using UnityEngine;
using System.Collections;

/// <summary>
/// 事実上のGameManager 名前つけるのしくったわ
/// </summary>
public class InputManager : MonoBehaviour {

	public GameObject player;
	public GameObject muzzle;
	public GameObject eto;
	public static GameObject eto_ = null;
	public static bool etoile;

	public GameObject closeThunder; //近接攻撃用エフェクト
	public GameObject closeMuzzle;
	public static bool close = false;

	public ThunderEffectController thunderEffect;

	public ETO EtoScript;

	public GameObject em = null;

	public GameObject test;

	public CrossHairController crossHair;

	public CameraController camControl;
	public CamSensitivityController camSensitivityControl;

	public AudioSource audioSource;


	public static bool boltLaunch = false;
	public static float boltTime = 0;

	public static bool sbt = false;

	public LockOn lockOn;

	public AudioClip boltLaunchSound;
	public AudioClip SBTSound;
	public AudioClip lockOnSound;
	public AudioClip etoileSound;
	public AudioClip etoileEndSound;

	private int height, width;
	private Vector3 screenMiddle;

	private Animator anim;



	const float DefaultShotDistance = 10;

	public enum PlayerStates
	{
		Idle,
		LockOn,
		Bolt,
		SBT,
		Etoile,
		Damaging
	}

	private PlayerStates playerState_ = PlayerStates.Idle;

	/// <summary>
	/// (Read Only)プレーヤーの現在の状態
	/// </summary>
	/// <value>The state of the player.</value>
	public PlayerStates playerState {
		get {
			return playerState_;
		}
	}

	private static bool isgamepad_;

	/// <summary>
	/// とりあえずMapLoaderからいじることにしてる
	/// </summary>
	/// <value><c>true</c> if is game pad; otherwise, <c>false</c>.</value>
	public static bool isGamePad {
		get {
			return isgamepad_;
		}
		set {
			isgamepad_ = value;
			foreach (GameObject go in GameObject.FindGameObjectsWithTag("TutorialUI")) {
				go.GetComponent<AnimationQueue_Tutorial> ().onControllerChanged (value);
			}
		}
	}



	/// <summary>
	/// ロックオン、ボルト射出、SBT、エトワールが終了した時に呼ばれるメソッド
	/// </summary>
	public void Idle ()
	{
		player.SetActive (true);
		Debug.Log (playerState_.ToString ());
		if (playerState_ == PlayerStates.Etoile) {
			etoile = false;
			audioSource.Stop ();
			audioSource.PlayOneShot (etoileEndSound);
			eto.SetActive (false);
		}
		playerState_ = PlayerStates.Idle;
		player.GetComponent<LockOn> ().endLockOn ();
		crossHair.isLockOn = false;
		camControl.StopLockOn ();
		PlayerControl.fly = false;
		anim.SetBool ("SBTStopToEnd", false);

	}

	// Use this for initialization
	void Start ()
	{
		
		//closeMuzzle.SetActive (false);
		EventManager.eventCount = 11;
		em = GameObject.Find ("EventManager");
		//mySceneManager.MapAsync.allowSceneActivation = true;
		anim = player.GetComponent<Animator> ();
		//audioSource = GetComponent<AudioSource>();

		etoile = false;

		height = Screen.height;
		width = Screen.width;
		screenMiddle = new Vector3 (width / 2, height / 2, 0);

        GameObject.Find("FadeInPanel").GetComponent<AnimationQueueBase>().Queue();

		CameraChanger.CurrentCamera = Camera.main;//インスタンスを作っとく
	}

	// Update is called once per frame
	void Update ()
	{
		//近接攻撃
		//StartCoroutine("closeAttackCoroutine");

		//右クリック
		if (EventManager.eventCount >= 7 ) {
			if (Input.GetButtonDown ("LaunchBolt")) {
				//Debug.Log ("MouseLeft");

				if (playerState == PlayerStates.LockOn) {//ロックオン状態の時は対象切り替え
					GameObject go = player.GetComponent<LockOn> ().Switch ();//ロックオン状態であれば次の対象へ
					onLockOnSwitched (go);
				} else if (playerState == PlayerStates.Idle) {//ロックオン状態じゃないときはボルト射出
					/*GameObject bolt = GameObject.FindGameObjectWithTag ("Bolt");
					if (bolt != null) {
						player.transform.LookAt (bolt.transform);
						player.transform.rotation = new Quaternion (0, player.transform.rotation.y, 0, player.transform.rotation.w);
					}*/
					playerState_ = PlayerStates.Bolt;
					Ray ray = Camera.main.ScreenPointToRay (screenMiddle);
					RaycastHit hit;
					Vector3 hitPosition;
					Quaternion hitQuaternion = Quaternion.Euler (0, 0, 0);
					int layerMask = ~(1 << 8);//レイヤー8(Player)を除く全部

					if (Physics.Raycast (ray, out hit, layerMask)) {
						//Debug.Log ("ahoaho");
						hitPosition = hit.point;
						hitQuaternion = Quaternion.LookRotation (hit.normal);
					} else {
						hitPosition = Camera.main.transform.position + (Camera.main.transform.forward * DefaultShotDistance);
					}
					if (player.GetComponent<PlayerShot> ().LaunchBolt (hitPosition, hitQuaternion)) {
						audioSource.PlayOneShot (boltLaunchSound);

					}

                    GameObject bolt = GameObject.FindGameObjectWithTag("Bolt");
                    if (bolt != null)
                    {
						if (boltLaunch == true) {
							Quaternion rot = Quaternion.LookRotation (hitPosition - player.transform.position);
							player.transform.rotation = Quaternion.Euler (0, rot.eulerAngles.y, 0);
						}
                    }

                }

			}
			if (playerState_ == PlayerStates.Bolt) {
				
				boltTime += Time.deltaTime;
				if (boltTime >= 0.3f) {
					playerState_ = PlayerStates.Idle;
					boltLaunch = false;
				}
			} else {
				boltLaunch = false;
			}
		}
					
		//Debug.Log ("hoghoe");
		//Shiftキーでロックオン
		if (EventManager.eventCount >= 1) {
			if (Input.GetButtonDown ("LockOn")) {
				Debug.Log ("lockOn");
				GameObject go;
				if (playerState_ == PlayerStates.Idle) {
					go = player.GetComponent<LockOn> ().startLockOn ();//アイドル状態であればロックオンを開始
					if (go != null) {
						playerState_ = PlayerStates.LockOn;
						onLockOnSwitched (go);
						if (EventManager.eventCount == 1) {
							em.GetComponent<EventManager> ().EventCount ();
						}
					}
				}
			} else if (Input.GetButtonUp ("LockOn")) {//Eキー離したらロックオンやめる
				player.GetComponent<LockOn> ().endLockOn ();
				if (playerState_ != PlayerStates.Etoile)
					Idle ();
			}



			/*//左クリック
			if (EventManager.eventCount >= 3) {
				if (Input.GetButtonDown ("Thunder")) {
					//Debug.Log ("Fire1Pressed");
					GameObject satou = null;

					if (playerState_ == PlayerStates.LockOn)
						satou = player.GetComponent<LockOn> ().getCurrentTarget ();//satouとはロックオンで取得したボルト
					if (satou != null) {
						player.transform.LookAt (satou.transform);
						player.transform.rotation = new Quaternion (0, player.transform.rotation.y, 0, player.transform.rotation.w);
						startSBT (satou);//長いのでメソッド化したよ
					}
				} else if (Input.GetButtonUp ("Thunder")) {
					//thunderEffect.StopEffect ();
					sbt = false;
					if (playerState_ == PlayerStates.SBT)
						Idle ();
				}
				if (playerState_ == PlayerStates.SBT) {
					anim.SetBool ("SBTStopToEnd", false);
				}
			}
*/

			//エトワールボタン
			if (PlayerControl.EclairImmobile == false && EventManager.eventCount >= 4) {
				if (Input.GetButtonDown ("Etoile")) {
					if (playerState_ == PlayerStates.LockOn) {
						audioSource.PlayOneShot (etoileSound);				
						eto_ = eto;//(GameObject)Instantiate (eto, transform.position, transform.rotation);
						eto_.transform.position = player.transform.position;
						etoile = true;
						eto.SetActive (true);
						GameObject lockonTarget = lockOn.getCurrentTarget ();
						//if(lockonTarget != null) player.GetComponent<ETO> ().startEtoile (lockonTarget);
						EtoScript.target = lockonTarget;
						playerState_ = PlayerStates.Etoile;
						player.SetActive (false);
					}
				}
			}
		}

		//カメラ感度
		if (Input.GetButtonDown ("Plus")) {
				Debug.Log ("Plus");
			camSensitivityControl.Up ();
		} else if (Input.GetButtonDown ("Minus")) {
				Debug.Log ("Minus");
			camSensitivityControl.Down ();
		}

		//TODO:キーボード/ゲームパッドの切り替え判定
		//Loading時も判定が行われるよう、今のところは仮でMapLoaderに処理を入れています


	}

	private void startSBT (GameObject target)
	{
		sbt = true;
		playerState_ = PlayerStates.SBT;
		thunderEffect.StartEffect (muzzle.transform.position, target.transform.position);
        Camera.main.GetComponent<RadialBlur>().Shock(0.5f,1.8f);
		audioSource.PlayOneShot (SBTSound);

		//ビリビリ上にあるオブジェクトを求めるよ
		Collider[] colliders = Physics.OverlapCapsule (muzzle.transform.position, target.transform.position, 1);
		foreach (Collider c in colliders) {
			EnemyBase enemy = c.gameObject.GetComponent<EnemyBase> ();
			//Destroy (c.gameObject);
			if (enemy != null) {//エクレアと衝突したオブジェクトにはEnemyBaseが含まれている、すなわちそれは敵である
				Debug.Log (c.name);
				enemy.Damage (15, target.transform.position - player.transform.position);
			} else {
				//Debug.Log (colliders.Length);
			}
		}
	}


	void onLockOnSwitched (GameObject target)
	{
		if (target != null) {
			crossHair.target = target.transform.position;//player.GetComponent<LockOn> ().getCurrentTarget ().transform.position;
			crossHair.isLockOn = true;
			audioSource.PlayOneShot (lockOnSound);
			camControl.StartLockOn (target);
		}
	}

	static float getAngleWithSign (Vector3 v1, Vector3 v2)
	{
		float angle = Vector3.Angle (v1, v2);
		int sign = Vector3.Cross (v1, v2).z < 0 ? -1 : 1;
		return angle * sign;
	}

	public string getDebugString ()
	{
		string st = "";

		st += "PlayerState : " + playerState_.ToString () + "\n";
		st += "CameraY : " + camControl.cameraY + "\n";
		st += "CameraAngle : " + camControl.cameraAngle + "\n";

		//Debug.Log (playerState_.ToString ());


		return st;
	}

	//IEnumerator closeAttackCoroutine(){
		
		//左クリックで近接攻撃
		/*if (Input.GetButtonDown ("Close")) {
			//closeMuzzle.SetActive (true);
			if (!close) {
				Instantiate (closeThunder, closeMuzzle.transform.position, closeMuzzle.transform.rotation);

				close = true;
			}
			yield return new WaitForSeconds (0.7f);
			//closeMuzzle.SetActive (false);
			close = false;
		}*/
}
	
