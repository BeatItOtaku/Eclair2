using UnityEngine;
using System.Collections;
using System.Collections.Generic;

namespace wararyo.EclairInput {

	/// <summary>
	/// キーボードのキーとInputTypeを紐づける情報
	/// </summary>
	[CreateAssetMenu (fileName = "KeyboardKeyConfig.asset", menuName = "EclairInput/KeyboardKeyConfig", order = 383)]
	public class KeyboardKeyConfig : ScriptableObject {
		[InputType]
		public string mouse;
		[InputType]
		public string axis;

		public List<KeyboardKeyInputTypePair> keyConfig;
		public KeyboardKeyConfig(){
		}
	}

	[System.Serializable]
	public class KeyboardKeyInputTypePair{
		public KeyCode keyCode;
		[InputType]
		public string inputType;
	}


}