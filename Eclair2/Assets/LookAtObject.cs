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

	private int num;

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
				cm.distance = 1.8f;
			}
		}
	
		if (lookAt) {
			pcm.eclairStopping = true;//エクレアが動かなくなり、操作はカメラに移る。
			mainCamera.transform.parent = cameraParent.transform;

			horizontal = Input.GetAxis("Horizontal"); //左右方向の移動
			vertical = Input.GetAxis("Vertical"); //上下方向の移動

			if (Input.GetKeyDown (KeyCode.Alpha1))num = 1;
			if (Input.GetKeyDown (KeyCode.Alpha2))num = 2;

			switch (num) {
			case 1:
				//キーボードの1キーを押すと、カメラの水平移動
				cameraParent.transform.position += (cameraParent.transform.right * horizontal + cameraParent.transform.up * vertical) * speed * Time.deltaTime;
				Debug.Log("alpha1");
				break;

			case 2:
				//キーボードの2キーを押すと、カメラのズームイン、アウト
				Debug.Log("alpha2");
				cm.distance += vertical * Time.deltaTime;
				break;
				

			}
		}
	}
}
