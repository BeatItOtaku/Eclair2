using UnityEngine;
using System.Collections;

public class Monument : MonoBehaviour {

	private int hp;
	private int score;

	public GameManager gm;

	private enum Color
	{
		Red,
		Blue,
		Green
	}
	private Color color_;

	// Use this for initialization
	void Start () {

		gm = GetComponent<GameManager> ();

		if (gameObject.tag == "RedMonument") {
			hp = 10;
			score = 10;
			color_ = Color.Red;
		}
		if (gameObject.tag == "BlueMonument") {
			hp = 50;
			score = 30;
			color_ = Color.Blue;
		}
		if (gameObject.tag == "GreenMonument") {
			hp = 100;
			score = 50;
			color_ = Color.Green;
		}
	}
	
	// Update is called once per frame
	void Update () {

		if (hp <= 0) {
			if (color_ == Color.Red) {
				gm.score += 10;
			}
			if (color_ == Color.Blue) {
				gm.score += 30;
			}
			if (color_ == Color.Green) {
				gm.score += 50;
			}
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
