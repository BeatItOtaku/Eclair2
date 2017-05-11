using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// キーボードのキーとInputTypeを紐づける情報
/// </summary>
[CreateAssetMenu (fileName = "KeyboardKeyConfig.asset", menuName = "EclairInput/KeyboardKeyConfig", order = 383)]
public class KeyboardKeyConfig : ScriptableObject {
	public List<KeyboardKeyInputTypePair> keyConfig;

	public string mouse;
	public string axis;
	public KeyboardKeyConfig(){
	}
}

[System.Serializable]
public class KeyboardKeyInputTypePair{
	public int keyCode;
	public string inputType;
}
