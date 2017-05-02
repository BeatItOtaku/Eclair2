using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class TargetCounter : MonoBehaviour {

	public GameManager gm;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {

		GetComponent<UnityEngine.UI.Text>().text = ((int)gm.monumentCount).ToString();
	
	}
}
