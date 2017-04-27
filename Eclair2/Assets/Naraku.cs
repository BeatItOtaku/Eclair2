using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Naraku : MonoBehaviour {

	public GameObject player;
	private float distance;

	private GameObject[] restartPosition;

	List<GameObject> targetList = new List<GameObject>();

	// Use this for initialization
	void Start () {

		/*restartPosition = GameObject.FindGameObjectsWithTag ("RestartPosition");
		foreach (GameObject rp in restartPosition) {
			distance = Vector3.Distance (rp.transform.position, player.transform.position);
			targetList.Add(new KeyValuePair<float, GameObject>(distance, rp));
		}
		targetList.Sort ();
		player.transform.position = targetList[0].Value.transform.position;
*/

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
	
	// Update is called once per frame
	void Update () {
	


	}

	private void OnTriggerEnter(Collider col){
		if(col.gameObject.tag == "Player" || col.gameObject.tag == "ETOEclair")
		{
			targetList = new List<GameObject>(GameObject.FindGameObjectsWithTag("RestartPosition"));
			targetList.Sort (CompareRestartPosition);
			player.transform.position = targetList[0].transform.position;
			Debug.Log (player.transform.position);
			Debug.Log (targetList [0].transform.position);
			Anten.antenStart = true;

		}

	}
		
}
