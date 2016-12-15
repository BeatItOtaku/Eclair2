using UnityEngine;
using System.Collections;



public class LinearMovement : MonoBehaviour {

	private Vector3 delta = new Vector3(0,0,0);

	private Vector3 direction = new Vector3(0,0,0);
	/// <summary>
	/// 普通は対象の位置 - Playerの位置を設定しとけば良いんじゃないかな。
	/// </summary>
	/// <value>The direction.</value>
	public Vector3 Direction {
		get{
			return direction;
		}
		set{
			direction = value;
			calcDelta();
		}
	}

	public float defaultSpeed = 1;

	private float speed = 1;
	public float Speed{
		get{ return speed; }
		set{
			speed = value;
			calcDelta ();
		}
	}

	private void calcDelta(){
		delta = direction.normalized * speed;
	}

	// Use this for initialization
	void Start () {
		speed = defaultSpeed;
		calcDelta();
	}
	
	// Update is called once per frame
	void Update () {
		gameObject.transform.position += delta * Time.deltaTime;
	}
}
