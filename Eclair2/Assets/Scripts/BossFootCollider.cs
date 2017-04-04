using UnityEngine;
using System.Collections;

public class BossFootCollider : MonoBehaviour {

	public static bool bossFootAttack = false;
    public GameObject player;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        //footTime += Time.deltaTime;;
        if (player == null)
        {
            player = GameObject.FindGameObjectWithTag("Player");
        }
    }
	private void OnTriggerEnter (Collider collider)
	{
        if (collider.gameObject.tag == "Player")
        {

            bossFootAttack = true;
            player.GetComponent<PlayerControl>().Damage(10);
        }
			
}
}
