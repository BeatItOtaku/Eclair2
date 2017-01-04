using UnityEngine;
using System.Collections;

public class PointerManagement : MonoBehaviour {

	public Transform pointer;
	private Ray pointerRay;

	public static bool pointOnEdge = true;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		Debug.Log (pointOnEdge);

		pointerRay = Camera.main.ScreenPointToRay(Input.mousePosition);
		RaycastHit hit;

		if(Physics.Raycast(pointerRay, out hit ,LayerMask.GetMask("Edges")) )
			{
				pointer.position = hit.point;
				pointOnEdge = true;
		}else{
				pointOnEdge = false;
			}
	
	}

	private void OnCollisionStay(Collision col){
		if (col.gameObject.tag == "Pointer")
		{
			pointOnEdge = true;
			Debug.Log ("hi");
		}
	}
}
