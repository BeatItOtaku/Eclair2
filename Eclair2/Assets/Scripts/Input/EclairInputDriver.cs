using UnityEngine;
using System.Collections;

namespace wararyo.EclairInput {

	public class EclairInputDriver : MonoBehaviour {

		public InputTypes inputTypes;
		public KeyboardKeyConfig keyboardKeyConfig;

		// Use this for initialization
		void Start () {
			Keyboard k = new Keyboard ("キーボードとマウス");
			k.keyConfig = keyboardKeyConfig;
			EclairInput.AddInputDevice (k);
		}
		
		// Update is called once per frame
		void Update () {
			foreach (InputDevice d in EclairInput.InputDevices) {
				d.Update ();
			}
		}
	}

}
