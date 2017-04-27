using UnityEngine;
using System.Collections;

public class Bullet : MonoBehaviour {

	private GameObject cursor; //画面上のカーソル
	private Vector3 cursorV;
	private Ray cursorRay;
	public float speed = 60f; //弾の速度

	public float lifeTime = 5; //弾の生存時間

	public GameObject effect;

	// Use this for initialization
	void Start () {
		//cursor = GameObject.Find ("Cursor");
		//cursorV = cursor.transform.position;
		cursorRay = Camera.main.ScreenPointToRay (Input.mousePosition);
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
	{
		Instantiate (effect, transform.position, transform.rotation);
		
		Destroy (gameObject);
	}
}