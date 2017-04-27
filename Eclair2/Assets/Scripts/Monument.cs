using UnityEngine;
using System.Collections;

public class Monument : MonoBehaviour {

	private GameObject player;

	public int hp; //モニュメントの耐久力
	public int redHp = 10;
	public int blueHp = 30;
	public int greenHp = 50;

	public int score; //モニュメントを壊して得られる得点
	public int redScore = 10;
	public int blueScore = 20;
	public int greenScore = 30;

	private GameObject gm_ = null; //ミニゲームのルールが書かれたスクリプトを格納しているオブジェクト
	public GameManager gm = null; //ミニゲームのルールが書かれたクラス。

	public GameObject effect;
	private bool isEffect = false;//エフェクトを再生したかどうか

	public GameObject pointUI;//破壊時に現れるUI

	public AudioSource audioSource;

	public AudioClip shotSound;
	public AudioClip breakSound;


	// Use this for initialization
	void Start () {

		Animation anim = gameObject.GetComponent<Animation> ();
		anim.Play ();
		player = GameObject.FindGameObjectWithTag ("Player");

		if (gameObject.tag == "RedMonument") {
			
			hp = redHp;
			score = redScore;

		}
		if (gameObject.tag == "BlueMonument") {
			
			hp = blueHp;
			score = blueScore;

		}
		if (gameObject.tag == "GreenMonument") {
			
			hp = greenHp;
			score = greenScore;

		}
	}

	void Awake(){
		
		if (gm == null) {
			gm_ = GameObject.Find ("GameManager");
			if (gm_ != null) {
				gm = gm_.GetComponent<GameManager> ();
			}
		}
	}
	
	// Update is called once per frame
	void Update () {

			if (hp <= 0) {
			if (!isEffect) {
				Instantiate (effect, transform.position, transform.rotation);
				if (gm != null) {
					//チュートリアルで、GameManagerが見つからない場合はスコアを加算しない。
					GameObject go = (GameObject)Instantiate(pointUI,transform.position,transform.rotation);
					if(gameObject.tag == "RedMonument")go.GetComponent<Score3D>().Score = 10;//または20または30
					if(gameObject.tag == "BlueMonument")go.GetComponent<Score3D>().Score = 20;//または20または30
					if(gameObject.tag == "GreenMonument")go.GetComponent<Score3D>().Score = 30;//または20または30
					go.GetComponent<Score3D>().LookAt(player.transform.position);
					gm.score += score;
					gm.monumentCount++;
				}
				isEffect = true;
			}
			audioSource.PlayOneShot (breakSound);
			Destroy (gameObject,0.1f);
		}

	}

			

	private void OnCollisionEnter(Collision col){
		if (hp > 0) {
			if (col.gameObject.tag == "Sword") {
				hp -= 10;
			}
			if (col.gameObject.tag == "Bullet") {
				audioSource.PlayOneShot (shotSound);

				hp -= 5;
			}
			if (col.gameObject.tag == "Bolt") {
				hp -= 25;
			}

		}
	}

	private void OnColliderEnter(Collider coll){
		if (hp > 0) {
			if (coll.gameObject.tag == "ETOEclair") {
				hp -= 100;
			}
		}
	}

}
