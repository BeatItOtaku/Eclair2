using UnityEngine;
using UnityEditor;
using System.Collections;

namespace wararyo.EclairInput {

	[CustomEditor(typeof(EclairInputDriver))]
	public class EclairInputDriverInspector : Editor {

		public override void OnInspectorGUI ()
		{
			base.OnInspectorGUI ();

			if(GUILayout.Button("Apply System Setting")) ApplySystemSetting();
		}

		void ApplySystemSetting(){
			EclairInput.inputTypes = ((EclairInputDriver)target).inputTypes;
		}
	}
}
