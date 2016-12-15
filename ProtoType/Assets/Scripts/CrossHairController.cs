using UnityEngine;
using System.Collections;

/// <summary>
/// CrossHair(照準)にアタッチして使う
/// </summary>
public class CrossHairController : MonoBehaviour {


	private bool isLockOn_ = false;
	/// <summary>
	/// 例によってInputManagerから操作する系のやつや
	/// </summary>
	/// <value><c>true</c> if the state is lock on; otherwise, <c>false</c>.</value>
	public bool isLockOn{
		get{
			return isLockOn_;
		}
		set{
			isLockOn_ = value;
			anim.SetBool ("isLockOn", isLockOn_);
		}
	}

	public float smoothFactor = 0.5f;

	public static Vector3 target_;
	/// <summary>
	/// 照準が目指して移動する三次元の位置
	/// </summary>
	public Vector3 target{
		get{
			return target_;
		}
		set{
			target_ = value;
			//reloadTargetOnScreen ();
		}
	}
	//targetを画面上の二次元座標に変換したやつ
	private Vector2 targetOnScreen;

	private Animator anim;
	private RectTransform rt;

	private Vector2 middleScreen = new Vector2(0,0);


	// Use this for initialization
	void Start () {
		anim = gameObject.GetComponent<Animator> ();	
		rt = gameObject.GetComponent<RectTransform> ();
	}
	
	// Update is called once per frame
	void Update () {
		if (isLockOn) {
			reloadTargetOnScreen ();
			rt.position = Vector2.Lerp (rt.position, targetOnScreen, smoothFactor);
		} else {
            rt.anchoredPosition = Vector2.Lerp(rt.anchoredPosition, middleScreen, smoothFactor);//CrossHairのAnchor(画面上の原点)は画面中央になってるからそこに近づく
		}
	}

	void reloadTargetOnScreen(){
		targetOnScreen = RectTransformUtility.WorldToScreenPoint (Camera.main, target);
	}
}
