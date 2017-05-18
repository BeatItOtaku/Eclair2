using UnityEngine;
using System.Collections.Generic;

namespace wararyo.EclairInput {

[CreateAssetMenu (fileName = "InputTypes.asset", menuName = "EclairInput/InputTypes", order = 381)]
	public class InputTypes : ScriptableObject
	{
		public List<string> inputTypes;
	}
}
