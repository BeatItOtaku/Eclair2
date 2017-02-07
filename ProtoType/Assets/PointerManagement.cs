using UnityEngine;
using System.Collections;

public class PointerManagement : MonoBehaviour {

	private Vector3 mousePosition;

	public static bool pointOnEdge = true;
	private bool edge = false;

	private bool upEdge = false;
	private bool downEdge = false;
	private bool leftEdge = false;
	private bool rightEdge = false;

	public RectTransform cursor;
	private Vector3 coursorPosition;
	private float edgePositionX;
	private float edgePositionY;
	//public Texture2D cursorTexture;
	//private CursorMode cursorMode = CursorMode.ForceSoftware;
	//private Vector2 hotSpot;

	// Use this for initialization
	void Start () {
		//hotSpot = new Vector2 (0, 0);
	
	}

	// Update is called once per frame
	void Update () {
		mousePosition = Input.mousePosition;
		//Cursor.SetCursor(cursorTexture, hotSpot, cursorMode);

		if (mousePosition.x <= Screen.width / 10) {
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
}
