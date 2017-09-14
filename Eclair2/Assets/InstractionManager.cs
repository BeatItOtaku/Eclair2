using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class InstractionManager : MonoBehaviour {
	
	public GameObject instractionParent;
	public Text[] instractions;//達成目標のテキスト

	public GameObject tutorialParent;
	public RectTransform[] tutorials;

	// Use this for initialization
	void Start () {
		instractions = instractionParent.GetComponentsInChildren<Text>();
		tutorials = tutorialParent.GetComponentsInChildren<RectTransform> ();
	}
	
	// Update is called once per frame
	void Update () {
		

	}

	public void InstractionChange(int num){
		instractions [num--].enabled = true;
		instractions [num].enabled = false;
	}


	public void TutorialDisplay(int num){

	}
}
