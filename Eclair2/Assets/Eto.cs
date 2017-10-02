using UnityEngine;
using System.Collections;

public class Eto : MonoBehaviour {

	public PlayerControlManager pcm;
	public GameObject player;

	public GameObject attackEffect;//eto終了時のエフェクト

	private GameObject bolt = null;
	private Bolt boltManager;

	private float distance;//etoエクレアからボルトまでの距離

	private Vector3 startPosition;//ETO開始地点
	private Vector3 endPosition;//ETO終了地点
	private float startTime;

	public float etoSpeed = 100;

	public float jumpheight = 30;//ETO終了後のジャンプする高さ

	public AudioSource audioSource;
	public AudioClip etoileSound;
	public AudioClip etoileEndSound;

	// Use this for initialization
	void Start () {
		
		gameObject.SetActive (false);
	}
	
	// Update is called once per frame
	void Update () {
		//ETOエクレアの表示、非常時はSetActiveで管理するため、このUpdateはETO中のみ動作する。

		Debug.Log (bolt);

		if (bolt == null) {
			//ステージ上にボルトが新しく打ち出されたとき、そのボルトを取得する。
			bolt = GameObject.FindGameObjectWithTag ("Bolt");
			boltManager = bolt.GetComponent<Bolt> ();

			startPosition = gameObject.transform.position;
			endPosition = bolt.transform.position;
			startTime = Time.time;

			audioSource.PlayOneShot (etoileSound);
			pcm.EclairMeshSwicher();//エクレアのメッシュをすべて非表示にする。
		}
		distance =  Mathf.Abs (Vector3.Distance (gameObject.transform.position, pcm.lastShot.transform.position));;//ボルトまでの距離

		gameObject.transform.LookAt (bolt.transform.position);//ボルトの方を向く。

		//ETOエクレアとボルトの間の道のりを規定の数だけ分割し、毎フレーム1分割数ごと進む。
		float distCovered = (Time.time - startTime) * etoSpeed;
		float fracJourney = distCovered / distance;
		transform.position = Vector3.Lerp (startPosition, endPosition,fracJourney );

		if (distance < 1.0f) {
			//ETOエクレアとボルトとが十分に近づいたら、ETOを終了する。
			audioSource.Stop ();
			EtoEnd ();
		}

			
	}

	private void EtoEnd(){
		//ETOを終了するメソッド
		audioSource.PlayOneShot (etoileEndSound);//ETOでぶつかったSE
		Instantiate (attackEffect, transform.position, transform.rotation);//ETOでぶつかった時に表示するエフェクト
		player.transform.position = endPosition;//エクレアをETO終了地点に移動させる。
		PlayerControlManager.eclairImmobile = false;
		boltManager.launchBolt = false; //ボルトが着弾したという判定を戻す
		boltManager = null;//ETOの目標となるボルトにあるboltManagerスクリプトを消す
		Destroy (bolt);
		pcm.EclairMeshSwicher();
		player.GetComponent<Rigidbody> ().velocity = new Vector3 (0, jumpheight, 0);
		pcm.isEto = false; //ETOが終了した
		gameObject.SetActive (false);


	}
	/*private void OnTriggerEnter(Collider col){
		if (col.gameObject.tag == "Terrain") {
			EtoEnd ();
		}
	}*/
}
