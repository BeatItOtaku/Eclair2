using UnityEngine;
using System.Collections.Generic;
using System;

namespace wararyo.EclairInput {

	/// <summary>
	/// EclairInputをまとめる役割を果たします
	/// </summary>
	public static class EclairInput {

		public static InputTypes inputTypes;

		public static List<InputDevice> InputDevices;

		static EclairInput(){
			InputDevices = new List<InputDevice>();
		}
	}

	public abstract class InputDevice {
		protected string deviceName = "";
		public string DeviceName{ get { return deviceName; } }

		public Action<InputEvent> OnInput;

		public InputDevice(string name){
			deviceName = name;
		}

		public abstract void Update ();
	}

	public class InputEvent {

		public int Type;

		public InputEvent(){

		}

		public InputEvent(int type){
			Type = type;
		}
	}

}