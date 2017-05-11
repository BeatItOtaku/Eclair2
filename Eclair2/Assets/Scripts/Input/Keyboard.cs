using UnityEngine;
using System.Collections;

namespace wararyo.EclairInput{

	public class Keyboard : InputDevice {

		public Keyboard(string name) : base(name){
			
			deviceName = "Keyboard";
		}

		public KeyboardKeyConfig keyConfig;

		public override void Update ()
		{
			foreach (KeyboardKeyInputTypePair p in keyConfig.keyConfig) {
				if(Input.GetKeyDown((KeyCode)p.keyCode)){

				}
			}
		}
	}

}