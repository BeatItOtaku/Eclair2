using UnityEngine;
using System.Collections;

public class ETO : MonoBehaviour {

	public GameObject target = null;
	public GameObject player;
	public GameObject lightning;
	public InputManager im;

	public float speed = 30;

	private GameObject eventBolt;

    public float timeLimit = 5;
    private float timeCursor = 0;

	// Use this for initialization
	void Start () {
		gameObject.SetActive (false);
	}
	
	// Update is called once per frame
	void Update () {
		if (InputManager.etoile == true) {
			//target = player.GetComponent<LockOn> ().getCurrentTarget ();
			if (target != null) {

                timeCursor += Time.deltaTime;
                if (timeCursor > timeLimit)
                {
                    timeCursor = 0;
                    im.Idle();//時間たちすぎたらエトワール終了、バグ対策
                }

				transform.LookAt (target.transform);

				//敵との衝突判定
				int layerMask = ~(1 << 8 | 1 << 0);//DefaultとPlayer以外全部
				RaycastHit hit;
				if (Physics.SphereCast (transform.position, 0.5f, transform.forward, out hit, speed * Time.deltaTime, layerMask)) {
					transform.position += transform.forward * Time.deltaTime * speed;
					OnHit (hit.collider);
				} else {
                    //SphereCastはものが発射地点にあると反応してくれないらしいから、SphereCastの結果が無くても諦めない
                    foreach (Collider c in Physics.OverlapSphere(transform.position, 0.5f, layerMask)){
                        OnHit(c);
                    }
					transform.position += transform.forward * Time.deltaTime * speed;
				}
			} else {
                timeCursor = 0;
				im.Idle ();//targetが居なくなったらEtoile終了だぜ
			}
		}
	}

	private void OnHit (Collider collider)
	{
		//Debug.Log ("ETO Collided To " + collider.gameObject.tag);
		//ボルトにぶつかったとき・・・電気のエフェクトを出す
		if (collider.gameObject.tag == "Bolt" && target.Equals(collider.gameObject)) {	
			//Debug.Log ("CollideToBolt");
			player.transform.position = target.transform.position;
			Instantiate (lightning, transform.position, transform.rotation);
			//Destroy (target);
			InputManager.etoile = false;
            timeCursor = 0;
			im.Idle ();
			gameObject.SetActive (false);

			if (target.GetComponent<BoltScript> ().isFixed == false) {
				//layer7は"Bolt"
				Destroy (target);
			}
		}

		//ボルト以外にぶつかったとき・・・電気のエフェクトは出ない
		if(collider.gameObject.tag == "EclairKeepOut"||collider.gameObject.tag == "Boss"){
			//Debug.Log ("CollideToKeepOut");
			player.transform.position = InputManager.eto_.transform.position;
			InputManager.etoile = false;
            timeCursor = 0;
			im.Idle ();
			gameObject.SetActive (false);
		} else {
			EnemyBase enemy = collider.gameObject.GetComponent<EnemyBase>();
			if (enemy != null) {
				enemy.Damage (30, target.transform.position - transform.position);
				TimeManager.Instance.theWorld (0.2f);
				Camera.main.GetComponent<RadialBlur> ().Shock (2);
			}
		}
	}
}
