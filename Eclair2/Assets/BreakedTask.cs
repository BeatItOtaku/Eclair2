using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BreakedTask : MonoBehaviour {

	public int maxTask= 30;
	public int breakedTask;

	// Use this for initialization
	void Start () {
		GetComponent<UnityEngine.UI.Text>().text = maxTask.ToString();
	}
	
	// Update is called once per frame
	void Update () {
		GetComponent<UnityEngine.UI.Text>().text = breakedTask.ToString();
	}
}
