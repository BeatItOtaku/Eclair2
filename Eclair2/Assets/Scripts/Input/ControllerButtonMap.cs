using UnityEngine;
using System.Collections.Generic;

namespace wararyo.EclairInput {

/// <summary>
/// コントローラーのA,B,X,Yなど各種ボタンとInputTypeとの紐づけ情報を記述するScriptableObject
/// </summary>
[CreateAssetMenu (fileName = "NewControllerButtonMap.asset", menuName = "EclairInput/ControllerButtonMap", order = 382)]
	public class ControllerButtonMap : ScriptableObject
	{
		public string A;
		public string B;
		public string X;
		public string Y;
		public string R1;
		public string L1;
		public string R2;
		public string L2;
		public string R3;
		public string L3;
		public string START;
		public string SELECT;
	}
}
