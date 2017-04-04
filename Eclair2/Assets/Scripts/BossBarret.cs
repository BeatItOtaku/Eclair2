using UnityEngine;
using System.Collections;

public class BossBarret : MonoBehaviour {

	public GameObject player;
	public GameObject burn;
    public float speed = 40;

	public static bool bossShotAttack = false;

	// Use this for initialization
	void Start () {
		player = GameObject.FindGameObjectWithTag ("Player");
		if (player == null) {	
			player = GameObject.FindGameObjectWithTag ("ETOEclair");
			transform.LookAt (player.transform);
		} else {
			transform.LookAt (player.transform.FindChild ("Muzzle"));
		}

	}

	// Update is called once per frame
	void Update () {

        transform.position += transform.forward * Time.deltaTime * speed;
	}

	private void OnCollisionEnter (Collision collider)
	{

		if (collider.gameObject.tag == "Player" && collider.gameObject.tag != "ETOEclair"){
            bossShotAttack = true;
            player.GetComponent<PlayerControl>().Damage(2,gameObject.transform.rotation.eulerAngles);
        }
        Instantiate(burn, transform.position, transform.rotation);
        Destroy(gameObject);
    }

}
