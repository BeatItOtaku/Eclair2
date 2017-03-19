using UnityEngine;
using System.Collections;

public class PlayerShot : MonoBehaviour {



	// Use this for initialization
	void Start () {
		boltQuaternionOffset = Quaternion.Euler (boltRotationOffset);
	}

	public GameObject shot;
	public GameObject muzzle;
	public GameObject ShotPause;
	public GameObject player;
	public Vector3 boltRotationOffset;

	public bool usePhysics = false;

	public float force = 10;

	private Quaternion boltQuaternionOffset;

	float shotInterval = 0;
	public float shotIntervalMin = 1F;

	GameObject lastShot = null; //TODO:慣れてきたらstaticを使う方法を取る

	// Update is called once per frame
	void Update ()
	{
		//発射間隔を設定する
		shotInterval += Time.deltaTime;
	}

    public void LaunchBolt(Vector3 target)
    {
        LaunchBolt(target, Quaternion.Euler(0,0,0));
    }

    //InputManagerから呼び出す
	public bool LaunchBolt(Vector3 target, Quaternion targetQuaternion){

        if (lastShot != null && shotInterval < shotIntervalMin) return false;//前回のLaunchBoltからあんまり時間経ってない時は何もしない
        else shotInterval = 0;

        if (lastShot != null) Destroy(lastShot);//直前のShotを消す(ShotPauseを使わない仕組みに変わったからこういうことができる)

        Vector3 playerToTarget = target - muzzle.transform.position;

		Ray pointRay = Camera.main.ScreenPointToRay(Input.mousePosition);
		transform.rotation = Quaternion.LookRotation(pointRay.direction);
		transform.rotation = new Quaternion (0, transform.rotation.y, 0, transform.rotation.w);

		playerToTarget.Normalize ();
		GameObject go = (GameObject)Instantiate (shot, muzzle.transform.position, Quaternion.LookRotation(pointRay.direction/*playerToTarget*/) * boltQuaternionOffset);
		InputManager.boltLaunch = true;
		InputManager.boltTime = 0;
        if (usePhysics)
        {
            go.GetComponent<Rigidbody>().velocity = player.GetComponent<Rigidbody>().velocity;
			go.GetComponent<Rigidbody>().AddForce(pointRay.direction/*playerToTarget*/ * force, ForceMode.VelocityChange);
        }
		go.GetComponent<BoltScript> ().Target = target;
        go.GetComponent<BoltScript>().TargetQuaternion = targetQuaternion;

        lastShot = go;//直前のShotとして指定z
        return true;
	}
			
}
