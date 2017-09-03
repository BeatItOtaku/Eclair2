using UnityEngine;
using System.Collections;

public class Bullet : MonoBehaviour {

	private GameObject cursor; //画面上のカーソル
	private Vector3 cursorV;
	private Ray cursorRay;


	public float speed = 60f; //弾の速度

	public float lifeTime = 5; //弾の生存時間

	public GameObject effect;

	public Ray CursorRay {
		set {
			cursorRay = value;
		}
	}

	// Use this for initialization
	void Start () {
		//cursor = GameObject.Find ("Cursor");
		//cursorV = cursor.transform.position;
		//cursorRay = Camera.main.ScreenPointToRay (Input.mousePosition);
	}

	// Update is called once per frame
	void Update () {

		if (lifeTime <= 0) {
			Destroy (gameObject);
		}
			lifeTime -= Time.deltaTime;
		gameObject.transform.position +=  cursorRay.direction * Time.deltaTime * speed;
	}

	private void OnCollisionEnter(Collision c)
	{//敵にダメージを与えて、弾は消滅
		int damage = 1;
		Vector3 direction = (gameObject.transform.position - c.gameObject.transform.position);
		Instantiate (effect, transform.position, transform.rotation);
		if (c.gameObject.tag == "Enemy") {
			c.gameObject.GetComponent<EnemyBase> ().Damage (damage,direction);
		}

		Destroy (gameObject);
	}
}