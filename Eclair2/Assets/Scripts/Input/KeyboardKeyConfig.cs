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
		public string mouseMove;
		[InputType]
		public string mouseRight;
		[InputType]
		public string mouseLeft;
		[InputType]
		public string mouseMiddle;
		[InputType]
		public string mouseWheel;

		[InputType,SpaceAttribute]
		public string axis;

		[Space]
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