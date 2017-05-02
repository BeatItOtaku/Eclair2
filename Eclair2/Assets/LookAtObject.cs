using UnityEngine;
using System.Collections;

/// <summary>
/// カメラを操作してオブジェクトをじろじろ見たいとき用のスクリプト。
/// キーボード上の数字キーで（テンキーではない）モードを切り替えられる。
/// 1.カメラの水平移動
/// 2.カメラのズームイン、アウト
/// 3.正面に戻る
/// </summary>
public class LookAtObject : MonoBehaviour {

	public static bool lookAt ;//Trueでじろじろ見れるようになる
	public PlayerControlManager pcm;
	public CameraController cm;

	public GameObject mainCamera;
	public GameObject player;
	public GameObject cameraParent;

	private float horizontal;
	private float vertical;
	private float speed = 20;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		Debug.Log (lookAt);
		//Debug.Log (cameraParent.transform.position);
		if(Input.GetKeyDown(KeyCode.Tab)){
			lookAt = !lookAt;
			Debug.Log ("Tab");
			if (!lookAt) {
				pcm.eclairStopping = false;
				cm.enabled = true;
			}
		}
	
		if (lookAt) {
			pcm.eclairStopping = true;//エクレアが動かなくなり、操作はカメラに移る。
			//cm.enabled = false;

			horizontal = Input.GetAxis("Horizontal"); //左右方向の移動
			vertical = Input.GetAxis("Vertical"); //上下方向の移動

			if (Input.GetKeyDown (KeyCode.Alpha1)) {
				//キーボードの1キーを押すと、カメラの水平移動
				cameraParent.transform.position += (Vector3.right * horizontal + Vector3.up * vertical) * speed * Time.deltaTime;
				Debug.Log("alpha1");
			}

			if (Input.GetKeyDown (KeyCode.Alpha2)) {
				//キーボードの2キーを押すと、カメラのズームイン、アウト
				Debug.Log("alpha2");
				cameraParent.transform.LookAt(player.transform);
				cameraParent.transform.position += (Vector3.up * vertical) * speed * Time.deltaTime;
			}
		}
	}
}
