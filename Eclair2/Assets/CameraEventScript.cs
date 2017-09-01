using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// イベントでカメラのアニメーションを動かしたいときに使うメソッド
/// </summary>
public class CameraEventScript : MonoBehaviour {

	private Animator anim; 
	private CameraController cc;

	// Use this for initialization
	void Start () {
		anim = GetComponent<Animator> ();
		cc = GetComponent<CameraController> ();
		CameraAnimationStart ("Trans01");
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	void CameraAnimationStart(string animName){
		PlayerControlManager.eclairImmobile = true;
		cc.enabled = false;
		anim.SetTrigger (animName);
	}
}
