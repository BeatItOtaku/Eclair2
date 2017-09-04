using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

namespace wararyo.TaskGround
{

	[CustomEditor (typeof(TaskGroundBrainTrello))]
	public class TaskGroundBrainTrelloInspector : TaskGroundBrainInspector
	{
		TaskGroundBrainTrello brain;

		void OnEnable(){
			brain = (TaskGroundBrainTrello)target;
		}

		public override void OnInspectorGUI ()
		{
			base.OnInspectorGUI ();
		}
	}

}