using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class ResultManager : MonoBehaviour {

	public GameManager gm;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		Debug.Log (gm.score);
		GetComponent<UnityEngine.UI.Text>().text = ((int)gm.totalScore).ToString();

	}
}
