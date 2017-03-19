using UnityEngine;
using System.Collections;

public class EnemyNormal : EnemyBase {

	public int maxHp = 15;
    public int attackReaction = 4;
    public int damageReaction = 6;
	public int dieReaction = 2;
	public int HP{ get; set; }
	public float normalSpeed = 2;
	public float attackSpeed = 4;
    public float mutekiTime = 0.8f;

    public GameObject effectWhenDied;

	public GameObject player;

    public AudioClip damaged;
    public AudioClip death;

    private Animator anim;

    private bool isMuteki;

    private AudioSource audio;

	private GameObject em;
	/// <summary>
	/// エクレアを感知する距離
	/// </summary>
	public float searchDistance = 16;
    public float moveDistance = 64;

	// Use this for initialization
	void Start () {
		HP = maxHp;
		player = GameObject.FindGameObjectWithTag ("Player");
        anim = GetComponent<Animator>();
        audio = GetComponent<AudioSource>();
	}
	
	// Update is called once per frame
	void Update () {
        if(player == null) player = GameObject.FindGameObjectWithTag("Player");
        float distance = Vector3.Distance(player.transform.position, transform.position);
        if (distance < searchDistance) {
            //プレイヤーが近づいてる時
            anim.enabled = true;
            anim.SetBool("isAttacking", true);
			Quaternion rot = Quaternion.LookRotation (player.transform.position - transform.position);
			transform.rotation = Quaternion.Euler (0, rot.eulerAngles.y, 0);
			//transform.LookAt(player.transform.position);
			//transform.position += transform.forward * attackSpeed * Time.deltaTime;
		} else if (distance < moveDistance){
            anim.enabled = true;
            anim.SetBool("isAttacking", false);
            //transform.position += transform.forward * normalSpeed * Time.deltaTime;
        }else
        {
            anim.enabled = false;
        }
	}

	public override void Damage(int damage,Vector3 direction){
        if (isMuteki) return;
		HP -= damage;
		GetComponent<Rigidbody>().velocity = (-transform.forward * damageReaction);
        if (HP <= 0)
        {
            anim.SetTrigger("Died");
			GetComponent<Rigidbody> ().constraints = new RigidbodyConstraints ();
			GetComponent<Rigidbody> ().velocity += transform.up * dieReaction;
            StartCoroutine(Death());
			if (EventManager.eventCount == 3) {
				em = GameObject.Find ("EventManager");
				em.GetComponent<EventManager> ().EventCount ();
			}
            ScoreCounter.EnemyBeated();
        }
        else
        {
            Quaternion lookRotation = Quaternion.LookRotation(direction);
            lookRotation = Quaternion.Euler(0, lookRotation.eulerAngles.y + 180, 0);
            transform.rotation = lookRotation;
            if (damage < 6) anim.SetTrigger("Defend");
            else
            {
                anim.SetTrigger("Damaged");
                audio.PlayOneShot(damaged);
            }

        }
        //Debug.Log ("ZakoHP:" + HP);
        StartCoroutine(startMuteki());

    }

    private IEnumerator Death()
    {
        audio.PlayOneShot(death);
        yield return new WaitForSecondsRealtime(1.2f);
        Instantiate(effectWhenDied, transform.position, new Quaternion(0, 0, 0, 0));
        Destroy(gameObject);
    }

    IEnumerator startMuteki()
    {
        if (!isMuteki)
        {
            isMuteki = true;
            yield return new WaitForSeconds(mutekiTime);
            isMuteki = false;
        }

    }

	void OnCollisionEnter(Collision col){
		//Debug.Log ("kougeki");
		if(col.gameObject.CompareTag("Player")){
            anim.SetTrigger("Attack");
			col.gameObject.GetComponent<PlayerControl> ().Damage (2);
            audio.PlayOneShot(damaged);
			GetComponent<Rigidbody>().velocity = (-transform.forward * attackReaction);
		}
	}
}
