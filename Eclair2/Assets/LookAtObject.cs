using UnityEngine;
using System.Collections;

/// <summary>
/// カメラを操作してオブジェクトをじろじろ見たいとき用のスクリプト。
/// Tabキーで切り替え。
/// WASDキー（または矢印キー）でカメラを移動、マウスホイールをスクロールでズームイン、アウト。
/// </summary>
public class LookAtObject : MonoBehaviour {

	public bool lookAt ;//Trueでじろじろ見れるようになる
	private PlayerControlManager pcm;
	private CameraController cc;

	private GameObject mainCamera;
	private GameObject player;
	public GameObject cameraParent;

	private float horizontal;
	private float vertical;
	private float mouseScroll;
	private float speed = 2;

	// Use this for initialization
	void Start () {
		mainCamera = GameObject.FindGameObjectWithTag ("MainCamera");
		player = GameObject.FindGameObjectWithTag ("Player");
		pcm = player.GetComponent<PlayerControlManager> ();
		cc = mainCamera.GetComponent<CameraController> ();
	}

	// Update is called once per frame
	void Update () {
		Debug.Log (cc.distance);
		Debug.Log (lookAt);
		if(Input.GetKeyDown(KeyCode.Tab)){
			lookAt = !lookAt; //エクレアじろじろシステムの切り替え
			pcm.eclairStopping = !pcm.eclairStopping; //エクレアの動作を停止、再開させる
			cameraParent.transform.position = player.transform.position;
			cameraParent.transform.rotation = player.transform.rotation;
			Debug.Log ("Tab");
			if (!lookAt) {
				cc.distance = cc.defaultDistance;
			}
		}
	
		if (lookAt) {
			
			horizontal = Input.GetAxis("Horizontal"); //左右方向の移動
			vertical = Input.GetAxis("Vertical"); //上下方向の移動

			if (cc.distance <= 0f) {
				mouseScroll = Mathf.Min(0, Input.GetAxis("Mouse ScrollWheel"));//カメラがエクレアを通り越してズームイン、アウトしない設定
			} else {
				mouseScroll = Input.GetAxis("Mouse ScrollWheel");//マウススクロールの移動
			}

			cameraParent.transform.LookAt(mainCamera.transform);
			cameraParent.transform.rotation = new Quaternion (0, cameraParent.transform.rotation.y, 0, cameraParent.transform.rotation.w);//回転をエクレアがいる平面に補正

			//キーボードの移動キーを押すと、カメラがその方向に移動する
			cameraParent.transform.position -= (cameraParent.transform.right * horizontal - cameraParent.transform.up * vertical) * Time.deltaTime * speed;
	        
			//マウスのホイールをスクロールすると、カメラがズームイン、アウトをする
			cc.distance -= mouseScroll * Time.deltaTime * speed;
		}
	}
}
