using UnityEngine;
using System.Collections;

public class Bullet : MonoBehaviour {

	private GameObject cursor; //画面上のカーソル
	private Vector3 cursorV;
	private Ray cursorRay;
	public float speed = 20f; //弾の速度

	public float lifeTime = 5; //弾の生存時間

	// Use this for initialization
	void Start () {
		cursor = GameObject.Find ("Cursor");
		cursorV = cursor.transform.position;
		cursorRay = Camera.main.ScreenPointToRay (cursorV);
	}
	// Update is called once per frame
	void Update () {
		
		lifeTime -= Time.deltaTime;
		gameObject.transform.position += cursorRay.direction * Time.deltaTime * speed;
	
		if (lifeTime <= 0) {
			Destroy (gameObject);
		}
	}

	private void OnCollisionEnter(Collider c)
	{
		Destroy (gameObject);
	}
}