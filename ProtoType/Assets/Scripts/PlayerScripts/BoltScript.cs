using UnityEngine;
using System.Collections;

public class BoltScript : MonoBehaviour {

    public float scaleWhenCollided = 1.0f;
    public Vector3 collidedRotateOffset;
    public AudioClip boltLandSound;

	public static bool boltOnWall;

    public bool isLanded = false;
    /// <summary>
    /// 固定ボルトかどうか
    /// </summary>
    public bool isFixed = false;

	public GameObject head;
	
	// Use this for initialization
	void Start () {
		boltOnWall = false;
	}

	public Vector3 Target {
		get;
		set;
	}

    public Quaternion TargetQuaternion { get; set; }

	// Update is called once per frame
	void Update () {
		//Destroy (gameObject, 3);
		//弾を前進させる
		//transform.position += transform.forward *Time.deltaTime * 70 ;
		//Debug.Log(gameObject.transform.position);

		if (!isLanded && !isFixed) {
			RaycastHit hit;
			int layerMask = ~((1 << 8) + (1 << 9)+(1<<12)+(1<<15));//PlayerとBoltとEclairKeepOut以外全部
			Vector3 velocity = gameObject.GetComponent<Rigidbody>().velocity;
			if (Physics.SphereCast (head.transform.position - (velocity * Time.deltaTime),0.1f, transform.forward, out hit, Mathf.Max(4,velocity.magnitude * Time.deltaTime * 2), layerMask)) {
				Collider collider = hit.collider;

				EnemyBase enemy = collider.gameObject.GetComponent<EnemyBase>();
				if (enemy != null && enemy.gameObject.tag != "BreakWall") {//敵だった時
					if (!isLanded) {
						enemy.Damage (1, gameObject.transform.forward);
						Destroy (gameObject, 0.5f);
					}
				} else if (collider.gameObject.tag == "Boss") {
					Destroy (gameObject, 0.5f);
				} else {//敵じゃなかった時

					//Debug.Log ("hoge");
					try {
						gameObject.GetComponent<LinearMovement> ().Speed = 0;
					} catch {
						gameObject.GetComponent<Rigidbody> ().isKinematic = true;
					}

					GetComponent<AudioSource> ().PlayOneShot (boltLandSound);
					isLanded = true;

					if (Target == null)
						return;

					//gameObject.transform.position = Target;
					//Debug.Log(TargetQuaternion.eulerAngles);
					TargetQuaternion = Quaternion.LookRotation (hit.normal);
					TargetQuaternion *= Quaternion.Euler (collidedRotateOffset);
					gameObject.transform.position = hit.point;
					gameObject.transform.rotation = Quaternion.Lerp (gameObject.transform.rotation, TargetQuaternion, 0.5f);
					gameObject.transform.localScale = new Vector3 (scaleWhenCollided, scaleWhenCollided, scaleWhenCollided);

                    ScoreCounter.BoltLaunched();
				}
			}
		}
		//Debug.Log (boltOnWall);
	}

	void OnTriggerEnter(Collider collider){
		if (collider.gameObject.tag == "Player") {

		} else if(collider.gameObject.tag != "Bolt") {
		}
	
			
		GetComponent<CapsuleCollider> ().isTrigger = false;

	}

	void OnCollisionEnter(Collision collider)
	{	
		if (collider.gameObject.tag == "Player")
			return;
		else if (collider.gameObject.tag == "Bolt") {
			Destroy (gameObject);
			return;
		}
	}
}
