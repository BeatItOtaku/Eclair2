using UnityEngine;
using System.Collections;

public class EclairMoveManager : MonoBehaviour {

	public float speed = 6.0F;
	public float gravity = 20.0F;
	public float rotationSpeed = 360f;

	Vector3 prevPosition;

	private Vector3 moveDirection = Vector3.zero;

	private Animator animator;

	// Use this for initialization
	void Start () {
		prevPosition = transform.position;

		animator = GetComponent<Animator> ();
		animator.SetBool("Run",false);
		animator.SetBool("Shot",false);
	
	}
	
	// Update is called once per frame
	void Update () {

		//プレイヤーを移動させる
		CharacterController controller = GetComponent<CharacterController> ();
		if (controller.isGrounded) {
			moveDirection = new Vector3 (Input.GetAxis ("Horizontal"), 0, Input.GetAxis ("Vertical"));
			moveDirection = transform.TransformDirection (moveDirection);
			moveDirection *= speed;
		}

		//移動方向に回転させる
		Vector3 direction = transform.position - prevPosition;
		if (direction.sqrMagnitude > 0) {
			Vector3 forward = Vector3.Slerp (
				                  transform.forward,
				                  new Vector3 (direction.x, 0, direction.z),
				                  rotationSpeed * Time.deltaTime / Vector3.Angle (transform.forward, direction)
			                  );

			transform.LookAt (transform.position + forward);
		}

		prevPosition = transform.position;


		if (Input.GetAxis ("Horizontal") != 0 || Input.GetAxis("Vertical") != 0) {
			animator.SetBool ("Run", true);
		}
		if (Input.GetAxis ("Horizontal") == 0) {
			animator.SetBool ("Run", false);
		}

		moveDirection.y -= gravity * Time.deltaTime;
		controller.Move (moveDirection * Time.deltaTime);
	
	}
}
