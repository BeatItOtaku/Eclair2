using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class DagekiTrantsition : StateMachineBehaviour {


	 // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
	override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
			FireManager.attacked = false;

	}

	 //OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
	override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
		bool dageki01, dageki02, dageki03 = false;
	
		if (stateInfo.IsName ("Base Layer.dageki00")) {
			if (FireManager.attacked == true) {
				dageki01 = true;
			} else {
				animator.SetBool ("Dageki", false);
			}
		}
		if (stateInfo.IsName ("Base Layer.dageki01") && dageki01 == true) {
		if (FireManager.attacked == true) {
				dageki02 = true;
			} else {
				animator.SetBool ("Dageki", false);
			}
	}
		if (stateInfo.IsName ("Base Layer.dageki02") && dageki02 == true) {
	if (FireManager.attacked == true) {
				dageki03 = true;

			} else {
				animator.SetBool ("Dageki", false);
			}
}
		if (stateInfo.IsName ("Base Layer.dageki03") && dageki03 == true) {
	if (FireManager.attacked == true) {
		
			} else {
				animator.SetBool ("Dageki", false);
			}
}
}


	// OnStateExit is called when a transition ends and the state machine finishes evaluating this state
	//override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
	//
	//}

	// OnStateMove is called right after Animator.OnAnimatorMove(). Code that processes and affects root motion should be implemented here
	//override public void OnStateMove(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
	//
	//}

	// OnStateIK is called right after Animator.OnAnimatorIK(). Code that sets up animation IK (inverse kinematics) should be implemented here.
	//override public void OnStateIK(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
	//
	//}
}
