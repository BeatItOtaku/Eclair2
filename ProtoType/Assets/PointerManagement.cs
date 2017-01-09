using UnityEngine;
using System.Collections;

public class PointerManagement : MonoBehaviour {

	private Vector2 mousePosition;

	public static bool pointOnEdge = true;


	public Texture2D cursorTexture;
	public CursorMode cursorMode = CursorMode.ForceSoftware;
	public Vector2 hotSpot;

	// Use this for initialization
	void Start () {
		hotSpot = new Vector2 (100, 100);
	
	}

	// Update is called once per frame
	void Update () {
		mousePosition = Input.mousePosition;

		if (mousePosition.x <= Screen.width / 5 || mousePosition.x >= Screen.width * 4 / 5 || mousePosition.y <= Screen.height/ 5 || mousePosition.y >= Screen.height * 4 / 5) {
			pointOnEdge = true;
			Cursor.SetCursor(cursorTexture, hotSpot, cursorMode);
		} else {
			pointOnEdge = false;
		}

		Cursor.SetCursor(cursorTexture, hotSpot, CursorMode.Auto);

	}
}
