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
			
			
	private float sensitivity = 1000f;

	private float leftEdge = Screen.width / 10;
	private float rightEdge = Screen.width * 9 / 10;
	private float topEdge = Screen.height * 9 / 10;
	private float bottomEdge = Screen.height / 10;

	public static bool pointOnEdge = true;

	/*private Vector3 mousePosition;

	
	private bool edge = false;

	private bool isTopEdge = false;
	private bool isBottomEdge = false;
	private bool isLeftEdge = false;
	private bool isRightEdge = false;

	private bool sideEdge = false;
	private bool heightEdge = false;

	private bool outEdge = false;

	public RectTransform cursor;
	private Vector3 coursorPosition;

	private Vector3 leftTopPosition;
	private Vector3 leftBottomPosition;
	private Vector3 rightTopPosition;
	private Vector3 rightBottomPosition;
*/

	/*
	private float edgePositionX;
	private float edgePositionY;
	//public Texture2D cursorTexture;
	//private CursorMode cursorMode = CursorMode.ForceSoftware;
	//private Vector2 hotSpot;
*/


	// Use this for initialization
	void Start () {
		cursor.x = Screen.width / 2;
		cursor.y = Screen.height / 2;




		/*
		mousePosition = Input.mousePosition;
		leftEdge = Screen.width / 10;
		rightEdge = Screen.width * 9 / 10;
		topEdge = Screen.height / 10;
		bottomEdge = Screen.height * 9 / 10;
		*/
	}

	// Update is called once per frame
	void Update ()
	{
		cursor.x += Input.GetAxis ("Camera X")* Time.deltaTime * sensitivity;
		cursor.y += Input.GetAxis ("Camera Y")* Time.deltaTime * sensitivity;
		cursor_ = new Vector3 (mouseX, mouseY, cursor.z);
		cursorPosition.position = cursor_;
		if (cursor.x <= leftEdge || cursor.x >= rightEdge || cursor.y <= bottomEdge || cursor.y >= topEdge)
		{
			pointOnEdge = true;
		}else 
		{
	        pointOnEdge = false;
     } 
		

	}
}
		/*

		leftTopPosition = new Vector3 (leftEdge, topEdge, mousePosition.z);
		leftBottomPosition = new Vector3 (leftEdge, bottomEdge, mousePosition.z);
		rightTopPosition = new Vector3 (rightEdge, topEdge, mousePosition.z);
		rightBottomPosition = new Vector3 (rightEdge, bottomEdge, mousePosition.z);


		//マウスの位置が左の辺を超えたとき
		if (mousePosition.x <= leftEdge) {
			isLeftEdge = true;
		} else {
			isLeftEdge = false;
		}

		//マウスの位置が右の辺を超えたとき
		if (mousePosition.x >= rightEdge) {
			isRightEdge = true;
		} else {
			isRightEdge = false;
		}
	
		//マウスの位置が下の辺を超えたとき
		if (mousePosition.y <= bottomEdge) {
			isBottomEdge = true;
		} else {
			isBottomEdge = false;
		}

		//マウスの位置が上の辺を超えたとき
		if (mousePosition.y >= topEdge) {
			isTopEdge = true;
		} else {
			isTopEdge = false;
		}
			
		//マウスの位置が上の辺と左の辺を超えたとき
		if (isTopEdge && isLeftEdge)
			cursor.position = leftTopPosition;
		outEdge = true;

		//マウスの位置が上の辺と右の辺を超えたとき
		if (isTopEdge && isRightEdge)
			cursor.position = rightTopPosition;
		outEdge = true;

		//マウスの位置が下の辺と左の辺を超えたとき
		if (isBottomEdge && isLeftEdge)
			cursor.position = leftBottomPosition;
		outEdge = true;
		//マウスの位置が下の辺と右の辺を超えたとき
		if (isBottomEdge && isRightEdge)
			cursor.position = rightBottomPosition;
		outEdge = true;

		if (!outEdge) {
			if (isLeftEdge || isRightEdge) {
				pointOnEdge = true;
				heightEdge = false;
				if (!sideEdge) {
					edgePositionX = cursor.position.x;
					sideEdge = true;
				}
				coursorPosition = new Vector3 (edgePositionX, mousePosition.y, mousePosition.z);
				cursor.position = coursorPosition;
			}
			else if (isTopEdge || isBottomEdge) 
			{
				pointOnEdge = true;
				sideEdge = false;
				if (!heightEdge) {
					edgePositionY = cursor.position.y;
					heightEdge = true;
				}
				coursorPosition = new Vector3 (mousePosition.x, edgePositionY, mousePosition.z);
				cursor.position = coursorPosition;
			}
		}
		sideEdge = false;
		heightEdge = false;
		pointOnEdge = false;
		outEdge = false;
		cursor.position = Input.mousePosition;
	}
}


		/*
		 * if (mousePosition.x <= Screen.width / 10) {
			pointOnEdge = true;
			if (!leftEdge) {
				edgePositionX = cursor.position.x;
				leftEdge = true;
			}
			coursorPosition = new Vector3 (edgePositionX, mousePosition.y, mousePosition.z);
			cursor.position = coursorPosition;
		}

			else if (mousePosition.x >= Screen.width * 9 / 10) {
			pointOnEdge = true;
			if (!rightEdge) {
				edgePositionX = cursor.position.x;
				rightEdge = true;
			}
			coursorPosition = new Vector3(edgePositionX,mousePosition.y,mousePosition.z);
			cursor.position = coursorPosition;
			}


		else if (mousePosition.y <= Screen.height / 10) {
			pointOnEdge = true;
			if (!downEdge) {
				edgePositionY = cursor.position.y;
				downEdge = true;
			}
			coursorPosition = new Vector3 (mousePosition.x, edgePositionY, mousePosition.z);
			cursor.position = coursorPosition;
		}

			else if( mousePosition.y >= Screen.height * 9 / 10) {
			pointOnEdge = true;
			if (!upEdge) {
				edgePositionY = cursor.position.y;
				upEdge = true;
			}
			coursorPosition = new Vector3(mousePosition.x,edgePositionY,mousePosition.z);
			cursor.position = coursorPosition;
	}else{
			upEdge = false;
			downEdge = false;
			leftEdge = false;
			rightEdge = false;

			pointOnEdge = false;
			cursor.position = Input.mousePosition;
		}
	}
}*/

