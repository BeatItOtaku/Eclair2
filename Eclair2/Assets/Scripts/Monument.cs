using UnityEngine;
using System.Collections;

public class Monument : MonoBehaviour {

	public int hp; //モニュメントの耐久力
	public int redHp = 10;
	public int blueHp = 50;
	public int greenHp = 100;

	public int score; //モニュメントを壊して得られる得点
	public int redScore = 10;
	public int blueScore = 30;
	public int greenScore = 50;

	private GameObject gm_ = null; //ミニゲームのルールが書かれたスクリプトを格納しているオブジェクト
	public GameManager gm = null; //ミニゲームのルールが書かれたクラス。


	// Use this for initialization
	void Start () {

		Animation anim = gameObject.GetComponent<Animation> ();
		anim.Play ();

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
			if (gm != null) {
				//チュートリアルで、GameManagerが見つからない場合はスコアを加算しない。
				gm.score += score;
				gm.monumentCount++;
			}
				Destroy (gameObject);
			}

	}

	private void OnCollisionEnter(Collider col){
		if (hp > 0) {
			if (col.gameObject.tag == "Sword") {
				hp -= 10;
			}
			if (col.gameObject.tag == "Bullet") {
				hp -= 4;
			}
			if (col.gameObject.tag == "Bolt") {
				hp -= 25;
			}
			if (col.gameObject.tag == "ETOEclair") {
				hp -= 100;
			}
		}
	}

}
