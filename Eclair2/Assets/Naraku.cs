using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Naraku : MonoBehaviour {

	public GameObject player;
	//private float distance; 

	private GameObject[] restartPosition; //[restartPosition]というタグがついたGameObjectの配列

	List<GameObject> targetList = new List<GameObject>();

	//public GameObject position = null; //エクレアが移動する、一番近いrestartPosition

	// Use this for initialization
	void Start () {


	}


	// Update is called once per frame
	void Update () {


	}

	private int CompareRestartPosition(GameObject a,GameObject b){
		float delta = Vector3.Distance(a.transform.position,player.transform.position) - Vector3.Distance(b.transform.position, player.transform.position);
		if (delta > 0)
			return 1;
		else if (delta == 0)
			return 0;
		else//delta < 0
			return -1;
	}

	private void OnTriggerEnter(Collider col){
		if(col.gameObject.tag == "Player" || col.gameObject.tag == "ETOEclair")
		{
			targetList = new List<GameObject>(GameObject.FindGameObjectsWithTag("RestartPosition"));
			targetList.Sort (CompareRestartPosition);
			player.transform.position = targetList[0].transform.position;
			//position = targetList[0];//.transform.position;
		}

	}
		
}
