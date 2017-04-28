using UnityEngine;
using System.Collections;

/// <summary>
/// CrossHair(照準)にアタッチして使う
/// </summary>
public class CrossHairController : MonoBehaviour {

	private RectTransform rt;

	public Transform muzzle;

	private int layerMask = ~((1 << 8) | (1 << 9) | (1 << 18));

	void Start(){
		rt = GetComponent<RectTransform> ();
	}

	void Update(){
		Ray ray = Camera.main.ViewportPointToRay(new Vector3(0.5f,0.5f,0));
		ray.origin = muzzle.position;
		RaycastHit hit;
		if (Physics.Raycast (ray, out hit,float.PositiveInfinity,layerMask)) {
			rt.position = RectTransformUtility.WorldToScreenPoint (Camera.main, hit.point);
			rt.anchoredPosition = new Vector2 (0,rt.anchoredPosition.y);
		}
	}
}
