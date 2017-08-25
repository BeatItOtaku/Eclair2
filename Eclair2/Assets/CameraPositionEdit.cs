using System.Collections;
using System.Collections.Generic;
using UnityEngine;
/// <summary>
/// Tabキーを押すことでFPS視点でカメラを移動させ、座標や回転を記録しあとでイベントなどで使うことを想定する。
/// </summary>
public class CameraPositionEdit : MonoBehaviour {

	public bool fpsCamera = false;//trueで、キーボードやマウスでカメラを移動させる。
	public bool rotation = false;//trueで、キーボードやマウスでカメラを回転させる。

	public GameObject mainCamera;

	private float horizontal;
	private float vertical;
	private float mouseScroll;
	private float speed;
	private float rotateSpeed = 0;
	private float mouseX;
	private float mouseY;

	public CameraController cc;

	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () {

		horizontal = Input.GetAxis("Horizontal"); //左右方向の移動
		vertical = Input.GetAxis("Vertical"); //上下方向の移動
		mouseScroll = Input.GetAxis("Mouse ScrollWheel");//マウススクロールの移動
		mouseX = Input.GetAxis ("Camera X");//カメラの左右方向の移動
		mouseY = Input.GetAxis ("Camera Y");//カメラの上下方向の移動


		speed = Time.deltaTime * 5;

		if (Input.GetButton ("Fire")) {
			rotateSpeed = 2;
		} else if (Input.GetButton ("Fire2")) {
			rotateSpeed = -2;
		} else {
			rotateSpeed = 0;
		}
		
		if (Input.GetKeyDown (KeyCode.Tab)) {
			cc.enabled = !cc.enabled;
			fpsCamera = !fpsCamera;
			PlayerControlManager.eclairImmobile = !PlayerControlManager.eclairImmobile;
		}

		if(fpsCamera == true){
			
			if (Input.GetKey (KeyCode.LeftShift)) {
				CameraRotation ();
			} else {
				CameraMovement ();
			}
		}
	}

	//カメラの移動を制御。WASDキーで上下左右に移動、マウススクロールで前後に移動
	void CameraMovement(){
		mainCamera.transform.position += (mainCamera.transform.right * horizontal + mainCamera.transform.up * vertical)  * speed;
		mainCamera.transform.position += mainCamera.transform.forward * mouseScroll * speed;

	}

	//Shiftキーを押している間カメラの回転を制御。
	void CameraRotation(){
		mainCamera.transform.eulerAngles += mainCamera.transform.right * horizontal * speed;
		mainCamera.transform.eulerAngles += mainCamera.transform.up * vertical  * speed;
		mainCamera.transform.eulerAngles += mainCamera.transform.forward * rotateSpeed  * speed;

	
	}
}
