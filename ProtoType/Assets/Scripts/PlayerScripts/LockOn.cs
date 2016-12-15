using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// ロックオン対象のGameObjectを取得するだけです。
/// キー取得やGUI描画などは別のスクリプトで行います。
/// </summary>
public class LockOn : MonoBehaviour {

	List<KeyValuePair<float, GameObject>> targetList = new List<KeyValuePair<float, GameObject>>();
	public GameObject player;

    public string boltHeadName = "pCylinder2";

	private int cursor = 0;

	public float maxDistance = 24;//24メートル以上離れてる対象にはロックオンしない

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public GameObject getCurrentTarget(){
		if (cursor == -1)
			return null;
		else
			return targetList [cursor].Value;
	}

	public GameObject startLockOn(){
		foreach (GameObject go in GameObject.FindGameObjectsWithTag ("Bolt") ) {
			if (go != null) {
                if (go.GetComponent<BoltScript>().isLanded)
                {
                    //float distance = Vector3.Distance (player.transform.position, go.transform.position);
                    /*if (distance > maxDistance)
                        continue;//遠すぎたらtargetListに追加することなくforの1ループをおわる*/

                    int layerMask = 0;
                    /*layerMask += 1 << 8;//Player
                    //layerMask += 1 << 9;//Bolt
                    layerMask += 1 << 13;//Boss
                    layerMask += 1 << 14;//Enemy
                    layerMask = ~layerMask;//最後に論理否定することにより、上記のLayer以外のすべてのレイヤーを指し示すことになる*/
					layerMask += (1 << 0) + (1 << 9);//DefaultとBolt

                    Ray toTargetRay = new Ray(Camera.main.transform.position, go.transform.Find(boltHeadName).position - Camera.main.transform.position);
                    RaycastHit hit;
                    if (Physics.Raycast(toTargetRay, out hit, maxDistance,layerMask))
                    {
                        if (hit.collider.tag == "Bolt")
                            targetList.Add(new KeyValuePair<float, GameObject>(getAnglularDistance(go), go));
                        //else
                        //targetList.Add(new KeyValuePair<float, GameObject>(getAnglularDistance(hit.collider.gameObject), hit.collider.gameObject));//Instantiate(//Debug.Log(hit.collider.transform.position);
                    }
                }
			}
		}
		targetList.Sort (CompareKeyValuePair);
		cursor = 0;
        if (targetList.Count == 0)
        {
            endLockOn();
            return null;
        }
        else return targetList[cursor].Value;
	}
	public void endLockOn(){
		cursor = -1;
        targetList.Clear();
		return;
	}

	public GameObject Switch(){
		cursor++;
		if (cursor >= targetList.Count) cursor = 0;
		return targetList [cursor].Value;
	}

	// 二つのKeyValuePair<string, int>を比較するためのメソッド
	static int CompareKeyValuePair(KeyValuePair<float, GameObject> x, KeyValuePair<float, GameObject> y)
	{
		// Keyで比較した結果を返す
		return (int)((x.Key - y.Key) * 100);
	}

	private float getAnglularDistance(GameObject target){
		Vector3 camera = Camera.main.transform.rotation * Vector3.forward;
		Vector3 toTarget = target.transform.position - player.transform.position;

		camera.y = 0;
		toTarget.y = 0;

		return Vector3.Angle (camera, toTarget);
	}
}
