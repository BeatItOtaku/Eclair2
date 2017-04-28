using UnityEngine;
using System.Collections;

public class BoltLandUI : MonoBehaviour {

	private bool isTracing = false;
	private GameObject target;

	private float AUTODESTROY_DELAY = 1.0f;

	public void Instantiate(GameObject target){
		GameObject go = (GameObject)Instantiate (gameObject, gameObject.transform);
		go.GetComponent<BoltLandUI> ().StartTrace (target);
	}

	public void StartTrace(GameObject go){
		isTracing = true;
		target = go;
		GetComponent<Animator> ().Play ("In");
	}

	public void StopTrace(){
		GetComponent<Animator> ().Play ("Out");
		isTracing = false;
	}

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if (isTracing) {
			if (target)
				GetComponent<RectTransform> ().position = RectTransformUtility.WorldToScreenPoint (Camera.main, target.transform.position);
			else {
				StopTrace ();
				Destroy (gameObject, AUTODESTROY_DELAY);
			}
		}
	}
}
