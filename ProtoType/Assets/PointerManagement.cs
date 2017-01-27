using UnityEngine;
using System.Collections;

public class PointerManagement : MonoBehaviour {

	private Vector3 mousePosition;

	public static bool pointOnEdge = true;
	private bool edge = false;

	public RectTransform cursor;
	private Vector3 coursorPosition;
	private float edgePositionX;
	private float edgePositionY;
	//public Texture2D cursorTexture;
	private CursorMode cursorMode = CursorMode.ForceSoftware;
	private Vector2 hotSpot;

	// Use this for initialization
	void Start () {
		hotSpot = new Vector2 (0, 0);
	
	}

	// Update is called once per frame
	void Update () {
		mousePosition = Input.mousePosition;
		//Cursor.SetCursor(cursorTexture, hotSpot, cursorMode);

		if (mousePosition.x <= Screen.width / 10 || mousePosition.x >= Screen.width * 9 / 10) {
			pointOnEdge = true;
			if (!edge) {
				edgePositionX = cursor.position.x;
				edge = true;
			}
			coursorPosition = new Vector3(edgePositionX,mousePosition.y,mousePosition.z);
			cursor.position = coursorPosition;

			}
		else if(mousePosition.y <= Screen.height/ 10 || mousePosition.y >= Screen.height * 9 / 10) {
			pointOnEdge = true;
			if (!edge) {
				edgePositionY = cursor.position.y;
				edge = true;
			}
			coursorPosition = new Vector3(mousePosition.x,edgePositionY,mousePosition.z);
			cursor.position = coursorPosition;
	}else{
			edge = false;
			pointOnEdge = false;
			cursor.position = Input.mousePosition;
		}
	}
}
