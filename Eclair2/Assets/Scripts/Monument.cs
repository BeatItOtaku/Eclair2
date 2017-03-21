using UnityEngine;
using System.Collections;

public class Monument : MonoBehaviour {

	private int hp;
	public int redHp = 10;
	public int blueHp = 50;
	public int greenHp = 100;

	private int score;
	public int redScore = 10;
	public int blueScore = 30;
	public int greenScore = 50;

	public GameManager gm;


	// Use this for initialization
	void Start () {

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
	
	// Update is called once per frame
	void Update () {

		if (hp <= 0) {
			gm.score += score;
			gm.monumentCount++;
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
