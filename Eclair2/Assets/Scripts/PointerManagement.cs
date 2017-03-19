using UnityEngine;
using System.Collections;

public class PointerManagement : MonoBehaviour {

	private Vector3 cursor;
	private Vector3 cursor_;
	public RectTransform cursorPosition;

	private float mouseX {
		get{
			cursor.x = Mathf.Clamp (cursor.x, leftEdge, rightEdge);
			return cursor.x;
		}
	}
	private float mouseY{
		get{
			cursor.y = Mathf.Clamp (cursor.y, bottomEdge, topEdge);
			return cursor.y;
		}
	}
			
	public float edgeTopF = 4.0f;
	public float edgeBottomF = 3.0f;
	private float EdgeBottomF{
		get{
			return edgeBottomF;
		}
		set{
			if(edgeBottomF >= edgeTopF){
				EdgeBottomF = edgeTopF;
			}
		}
	}

	private float sensitivity = 1000f;

	private float leftEdge = Screen.width / 10;
	private float rightEdge = Screen.width * 9 / 10;
	private float topEdge = Screen.height * 9 / 10;
	private float bottomEdge = Screen.height / 10;

	//public static bool pointOnEdge = true;




	// Use this for initialization
	void Start () {
		cursor.x = Screen.width / 2;
		cursor.y = Screen.height / 2;
	}

	// Update is called once per frame
	void Update ()
	{
		cursor.x += Input.GetAxis ("Camera X")* Time.deltaTime * sensitivity;
		cursor.y += Input.GetAxis ("Camera Y")* Time.deltaTime * sensitivity;
		cursor_ = new Vector3 (mouseX, mouseY, cursor.z);
		cursorPosition.position = cursor_;
		/*if (cursor.x <= leftEdge || cursor.x >= rightEdge || cursor.y <= bottomEdge || cursor.y >= topEdge)
		{
			pointOnEdge = true;
		}else 
		{
	        pointOnEdge = false;
     } */
		
		if (FireManager.pointOnEdge == false) {
			cursor.x = Screen.width / 2;
			cursor.y = Screen.height / 2;
		}
	}
}
		