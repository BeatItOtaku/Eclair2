using UnityEngine;
using System.Collections;
using System;

public class PlayerControl : MonoBehaviour
{
	


	public void setHorizontalAngle(int angle){
		h = angle;
	}

	private float angleUsing;
	private int angleId;

	public CameraController tutumin;

	public HPGaugeController HPGauge;
	private int hp_ = MaxHP;
	public int HP{
		get{
			return hp_;
		}
		set{
			hp_ = value;
			HPGauge.currentHP = value;
		}
	}
	const int MaxHP = 100;
	public HPGaugeController hpGaugeController;

	public InputManager im;
	//private int hp;

	public float walkSpeed = 4.0f;
	public float runSpeed = 1.0f;
	public float sprintSpeed = 2.0f;
	public float flySpeed = 4.0f;

	public float turnSmoothing = 3.0f;
	public float aimTurnSmoothing = 15.0f;
	public float speedDampTime = 0.1f;

	public float jumpHeight = 5.0f;
	public float jumpCooldown = 1.0f;

    public float mutekiTime = 2.0f;

	private float timeToNextJump = 0;
	
	private float speed;

	private Vector3 lastDirection;

	private Animator anim;
	private int speedFloat;
	private int jumpBool;
	private int hFloat;
	private int vFloat;
	private int aimBool;
	private int flyBool;
	private int groundedBool;
	private Transform cameraTransform;

	private float h;
	private float v;

	private bool aim;

	private bool run;
	private bool sprint;

	private bool isMoving = false;

	public static bool EclairImmobile;
	public static bool shotPause;

	// fly
	public static bool fly = false;
	private float distToGround;
	private float sprintFactor;

	private float attackedTime =0;

    private float mutekiTimeCursor = 0;
    private bool isMuteki = false;

    private bool died = false;



	void Awake()
	{
		
		anim = GetComponent<Animator> ();
		cameraTransform = Camera.main.transform;

		speedFloat = Animator.StringToHash("Speed");
		jumpBool = Animator.StringToHash("Jump");
		hFloat = Animator.StringToHash("H");
		vFloat = Animator.StringToHash("V");
		aimBool = Animator.StringToHash("Aim");
		// fly
		flyBool = Animator.StringToHash ("Fly");
		groundedBool = Animator.StringToHash("Grounded");
		distToGround = GetComponent<Collider>().bounds.extents.y;
		sprintFactor = sprintSpeed / runSpeed;
		angleId = Animator.StringToHash ("AngleUsing");
		//damage = hpGaugeController.GetComponent<HPGaugeController> ();
		EclairImmobile = false;

	}

	bool IsGrounded() {
		return Physics.Raycast(transform.position + new Vector3(0,0.1f,0), -Vector3.up,  0.15f);
	}

	void Update(){
		//CharacterController controller = GetComponent<CharacterController> ();
		if (IsGrounded())//controller.isGrounded) {
		{anim.SetBool ("NewGrounded", true);
			//transform.position += Vector3.down * 0;

		} else {
			anim.SetBool ("NewGrounded", false);
			//transform.position += Vector3.down * Time.deltaTime*10;
		}



		
		// fly
		/*if(Input.GetButtonDown ("Fly"))
			fly = !fly;
		aim = Input.GetButton("Aim");*/
		h = Input.GetAxis("Horizontal");
		v = Input.GetAxis("Vertical");
		//run = Input.GetButton ("Run");
		//sprint = Input.GetButton ("Sprint");
		isMoving = Mathf.Abs(h) > 0.1 || Mathf.Abs(v) > 0.1;

		angleUsing = tutumin.getCameraAngle ().y;
		ShotManagament ();
		//SBTManagament ();
		HPManagament();
		StopManagament ();
        mutekiManagement();
        DeathManagement();
		ClostManagament ();



	}

    void FixedUpdate()
	{
		anim.SetBool (aimBool, IsAiming());
		anim.SetFloat(hFloat, h);
		anim.SetFloat(vFloat, v);
		
		// Fly
		anim.SetBool (flyBool, fly);
		GetComponent<Rigidbody>().useGravity = !fly;
		anim.SetBool (groundedBool, IsGrounded ());
		if(fly)
			FlyManagement(h,v);

		else
		{
			MovementManagement (h, v, run, sprint);
			JumpManagement ();
		}
	}

	private void OnCollisionEnter (Collision collider)
	{
		if(collider.gameObject.tag == "Plane")
		{ anim.SetBool ("NewGrounded", true);
		}
		else{
			anim.SetBool ("NewGrounded", false);
		}
	}



	// fly
	void FlyManagement(float horizontal, float vertical)
	{
		Vector3 direction = Rotating(horizontal, vertical);
		GetComponent<Rigidbody>().AddForce(direction * flySpeed * 100 * (sprint?sprintFactor:1));
	}

	void JumpManagement()
	{
		if (GetComponent<Rigidbody>().velocity.y < 10) // already jumped
		{
			anim.SetBool (jumpBool, false);
			if(timeToNextJump > 0)
				timeToNextJump -= Time.deltaTime;
		}
		/*if (Input.GetButtonDown ("Jump"))
		{
			anim.SetBool(jumpBool, true);
			if(speed > 0 && timeToNextJump <= 0 && !aim)
			{
				GetComponent<Rigidbody>().velocity = new Vector3(0, jumpHeight, 0);
				timeToNextJump = jumpCooldown;
			}
		}*/
	}

	void MovementManagement(float horizontal, float vertical, bool running, bool sprinting)
	{
		if (isMuteki || (BossFootCollider.bossFootAttack == false && BossBarret.bossShotAttack == false && EclairImmobile == false && shotPause ==false)) {
			Rotating (horizontal, vertical);
		}

		if (isMoving) {
			
			if (sprinting) {
				speed = sprintSpeed;

			} else if (running) {
				speed = runSpeed;

			} else {
				speed = walkSpeed;

			}

			if (isMuteki || (BossFootCollider.bossFootAttack == false && BossBarret.bossShotAttack == false && EclairImmobile == false && shotPause ==false)) {
				anim.SetFloat (speedFloat, speed, speedDampTime, Time.deltaTime);
				transform.position += transform.forward * Time.deltaTime * 5;
			}
		} else {
			speed = 0f;
			anim.SetFloat (speedFloat, 0f);
			transform.position += transform.forward * Time.deltaTime * 0;
		}

		/*		anim.SetBool ("Grounded", true); 
				transform.position += transform.forward * Time.deltaTime * 5;
			} 

		}
		if(horizontal == 0 && vertical == 0){
			anim.SetBool ("Grounded", false);
			transform.position += transform.forward * Time.deltaTime * 0;
		}*/
		GetComponent<Rigidbody>().AddForce(Vector3.forward*speed);

		if (EclairImmobile == true) {
			isMoving = false;
		}
	}

	void ShotManagament()
	{
		if(InputManager.boltLaunch == true ){
			Ray pointRay = Camera.main.ScreenPointToRay(Input.mousePosition);
			transform.rotation = Quaternion.LookRotation(pointRay.direction);
			transform.rotation = new Quaternion (0, transform.rotation.y, 0, transform.rotation.w);
			shotPause = true;
			anim.SetBool ("Shot", true);
			anim.SetFloat(angleId,angleUsing);
		

		}
		if(InputManager.boltLaunch == false){
			shotPause = false;
			anim.SetBool("Shot",false);

		}
	}

	/*void SBTManagament()
	{
		if(InputManager.sbt == true && EclairImmobile == false){
			PlayerControl.EclairImmobile = true;
			anim.SetBool("SBT",true);
			anim.SetFloat (angleId, angleUsing);
		

		}
		if(InputManager.sbt == false){
			PlayerControl.EclairImmobile = false;
			anim.SetBool ("SBTStopToEnd", true);
			anim.SetBool ("SBT", false);
		}
	}*/

	void ClostManagament()
	{
		if(InputManager.close == true && EclairImmobile == false){
			EclairImmobile = true;
			anim.SetBool("SBT",true);
			Ray pointRay = Camera.main.ScreenPointToRay(Input.mousePosition);
			transform.rotation = Quaternion.LookRotation(pointRay.direction);
			transform.rotation = new Quaternion (0, transform.rotation.y, 0, transform.rotation.w);
		}
		if (InputManager.close == false) {
			EclairImmobile = false;
			anim.SetBool ("SBT", false);
		}
	}
	void HPManagament()
	{
        //if (isMuteki) return;//ñ≥ìGèÛë‘Ç»ÇÁâΩÇ‡ÇµÇ»°…
		if (BossFootCollider.bossFootAttack == true) { 
			//GameObject bossFoot = GameObject.FindGameObjectWithTag ("Boss");
			//transform.LookAt (bossFoot.transform);
			attackedTime += Time.deltaTime;
			//anim.SetBool ("BigAttacked",true);

            if (attackedTime > 1.3f) {
				BossFootCollider.bossFootAttack = false;
				//anim.SetBool ("BigAttacked",false);
				attackedTime = 0;
                //if(!isMuteki) startMuteki();
            }
        }
		if (BossBarret.bossShotAttack == true) {
			attackedTime += Time.deltaTime;
			//anim.SetBool ("SmallAttacked",true);

            if (attackedTime > 0.4f) {
				BossBarret.bossShotAttack = false;
				//anim.SetBool ("SmallAttacked",false);
				attackedTime = 0;
                //if (!isMuteki) startMuteki();
            }
        }

	}

	/*void KilledManagament()
	{
		if (currentHP == 0)
		{
			anim.SetTrigger ("EclairKilled");
		}
	}*/

	Vector3 Rotating(float horizontal, float vertical)
	{
			Vector3 forward = cameraTransform.TransformDirection (Vector3.forward);
			if (!fly)
				forward.y = 0.0f;
			forward = forward.normalized;

			Vector3 right = new Vector3 (forward.z, 0, -forward.x);

			Vector3 targetDirection;

			float finalTurnSmoothing;

			if (IsAiming ()) {
				targetDirection = forward;
				finalTurnSmoothing = aimTurnSmoothing;
			} else {
				targetDirection = forward * vertical + right * horizontal;
				finalTurnSmoothing = turnSmoothing;
			}

			if ((isMoving && targetDirection != Vector3.zero) || IsAiming ()) {
				Quaternion targetRotation = Quaternion.LookRotation (targetDirection, Vector3.up);
				// fly
				if (fly)
					targetRotation *= Quaternion.Euler (90, 0, 0);


				Quaternion newRotation = Quaternion.Slerp (GetComponent<Rigidbody> ().rotation, targetRotation, finalTurnSmoothing * Time.deltaTime*20);
				GetComponent<Rigidbody> ().MoveRotation (newRotation);
			//lastDirection = targetDirection;
			}
			//idle - fly or grounded
			if (!(Mathf.Abs (h) > 0.9 || Mathf.Abs (v) > 0.9)) {
				Repositioning ();
			}

			return targetDirection;

	}

	private void Repositioning()
	{
		
		Vector3 repositioning = lastDirection;
		if(repositioning != Vector3.zero)
		{
			repositioning.y = 0;
			Quaternion targetRotation = Quaternion.LookRotation (repositioning, Vector3.up);
			Quaternion newRotation = Quaternion.Slerp(GetComponent<Rigidbody>().rotation, targetRotation, turnSmoothing * Time.deltaTime);
			GetComponent<Rigidbody>().MoveRotation (newRotation);
		}
	}

	public bool IsFlying()
	{
		return fly;
	}

	public bool IsAiming()
	{
		return aim && !fly;
	}

	public bool isSprinting()
	{
		return sprint && !aim && (isMoving);
	}

    public void Damage(int damage)
    {
        Damage(damage, new Vector3(0, 0, 0));
    }

    /// <summary>
    /// É_ÉÅÅ[ÉWÇéÛÇØÇΩÇ…êÅÇ¡îÚÇ—Ç‹Ç∑ÅBÇªÇÃå„ñ≥ìGéûä‘Ç™énÇ‹ÇËÇ‹Ç∑ÅB
    /// </summary>
    /// <param name="damage"></param>
	public void Damage(int damage,Vector3 direction){
        Debug.Log(isMuteki);
        if (isMuteki)
        {
            //ObjectBlinker.Instance.Blink(gameObject, mutekiTime);
        }
        else
        {
            if(!direction.Equals(new Vector3(0,0,0))) transform.rotation = Quaternion.Euler(transform.rotation.eulerAngles.x, Quaternion.LookRotation(-direction).eulerAngles.y, transform.rotation.eulerAngles.z);
            HP -= damage;
            if(damage > 8)
            {
                StartCoroutine(whenAttacked("BigAttacked", 1.3f));
            }
            else
            {
                StartCoroutine(whenAttacked("SmallAttacked", 0.4f));
            }
        }
	}

    IEnumerator whenAttacked(string parameter,float time)
    {
        startMuteki();
		//PlayerControl.EclairImmobile = true;
        anim.SetBool(parameter, true);
        yield return new WaitForSeconds(time);
        anim.SetBool(parameter, false);
		//PlayerControl.EclairImmobile = false;
    }

    void startMuteki()
    {
        ObjectBlinker.Instance.Blink(gameObject, mutekiTime);
        isMuteki = true;
        mutekiTimeCursor = 0;
    }


    private void mutekiManagement()
    {
        if (isMuteki) {
            mutekiTimeCursor += Time.deltaTime;
            if(mutekiTimeCursor > mutekiTime)
            {
                isMuteki = false;
                mutekiTimeCursor = 0;//îOÇÃÇΩÇﬂ
            }
        }
    }

    void DeathManagement()
    {
		if(HP <= 0 && died == false && EclairImmobile == false)
        {
			anim.SetTrigger ("EclairKilled");
            died = true;
            MapLoader.Instance.GameOver();
        }
    }


    void StopManagament(){
		/*if (EclairImmobile == true) {
			im.Idle ();
			im.enabled = false;
			anim.enabled = false;
		} else {
			anim.enabled = true;
			im.enabled = true;
		}*/
	}
}
