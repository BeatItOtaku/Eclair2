using System.Collections;
using System.Collections.Generic;
using UnityEngine;
/// <summary>
/// checkPointを通過すると、Canvas内のFrameOfInstractionオブジェクト内のInstractionManagerにあるメソッドが実行される。
/// このメソッドは今表示してある達成目標を非表示にし、次の目標を表示する。
/// </summary>
public class CheckPoint : MonoBehaviour {

	private int checkPointNumber = 0;//チェックポイントを何個通過したか。
	public InstractionManager im;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		Debug.Log (checkPointNumber);
	}

	public void OnTriggerEnter(Collider col){
		if (col.gameObject.tag == "Player") {
			checkPointNumber++;
			im.InstractionChange (checkPointNumber);
			Destroy (gameObject);
		}
	}
}
