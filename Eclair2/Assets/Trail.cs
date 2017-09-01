using UnityEngine;
using System.Collections;
/// <summary>
/// TrailRendererで弧のようなエフェクトを作る予定。
/// 弧の中心から遠くなるほどトレイルが長くなる予定。
/// </summary>
public class Trail : MonoBehaviour {

	public GameObject go;
	public GameObject trailPositon;
	private GameObject[] goArray;//トレイルを出すオブジェクトを格納

	public Transform center;//弧の中心の位置
	public Transform edge;//弧の弦の位置
	private Transform trailTransform;//トレイルを出すオブジェクトの位置


	private Ray centerToEdge;//弧の中心から弧の弦に向かうRay

	private float length;//弧の中心からの弧の弦までの距離
	private float wariai = 0.001f;//弧の中心から弦までの長さをどれくらいで割るか
	private float bunkathusu;//lengthをどれくらい分割したか
	private float time;//trailがどれくらい残るか

	private Vector3 distanceFromCenter;//弧の中心からの距離

	// Use this for initialization
	void Start () {
		centerToEdge = new Ray (center.position, edge.position);
		length = Vector3.Distance (center.position, edge.position);
		bunkathusu = length / wariai;
	}

	// Update is called once per frame
	void Update () {
		TrailFanction ();
	}

	void TrailFanction(){
		
		for(int i = 1;i<(int)bunkathusu;i++){
			distanceFromCenter = centerToEdge.GetPoint (bunkathusu * (float)i);
			trailTransform.position = distanceFromCenter;
			goArray [i] = (GameObject)Instantiate (trailPositon, trailTransform.position, trailTransform.rotation);
			time = (float)i;
				goArray[i].GetComponent<TrailRenderer>().time = time;
			Debug.Log ("hi");
		}
	}
}
