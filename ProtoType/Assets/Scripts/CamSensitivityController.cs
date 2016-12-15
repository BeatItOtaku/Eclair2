using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// カメラ感度UIを表示するほか、実際にCameraController.CameraSensitivityの操作も行います。
/// </summary>
public class CamSensitivityController : MonoBehaviour {

	public Text text;
	public CameraController cam;

	public enum CameraSensitivity{Low,Normal,High};
	public CameraSensitivity defaultCameraSensitivity = CameraSensitivity.Normal;
	private int cameraSensitivity;//Enumの値 MinからMaxまでの値をとる

	public Dictionary<int,int> sensitivityMap = new Dictionary<int, int> () {
		{(int)CameraSensitivity.Low,150},
		{(int)CameraSensitivity.Normal,300},
		{(int)CameraSensitivity.High,500}
	};

	public Dictionary<int,string> sensitivityString = new Dictionary<int, string> () {
		{(int)CameraSensitivity.Low,"低い"},
		{(int)CameraSensitivity.Normal,"普通"},
		{(int)CameraSensitivity.High,"高い"}
	};

	private const int Max = 2;
	private const int Min = 0;

	private Color textColor;

	// Use this for initialization
	void Start () {
		cameraSensitivity = (int)defaultCameraSensitivity;
		textColor = text.color;
	}
	
	// Update is called once per frame
	void Update () {
		textColor.a -= 0.01f;
		text.color = textColor;
	}

	public void Up(){
		cameraSensitivity = Mathf.Clamp (++cameraSensitivity, Min, Max);
		setSensitivity(cameraSensitivity);
	}

	public void Down(){
		cameraSensitivity = Mathf.Clamp (--cameraSensitivity, Min, Max);
		setSensitivity(cameraSensitivity);
	}
	private void setSensitivity(int sensitivity){
		cam.mouseSensitivity = sensitivityMap[sensitivity];
		text.text = "カメラ感度:" + sensitivityString [sensitivity];
		textColor.a = 1;
	}
}
