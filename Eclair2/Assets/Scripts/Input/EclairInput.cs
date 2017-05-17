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

		public static Action<InputEvent> any;

		/// <summary>
		/// InputDevices.Addは行わなず、こちらを用いてください。
		/// </summary>
		/// <param name="d">追加するInputDevice</param>
		public static void AddInputDevice(InputDevice d){
			InputDevices.Add (d);
			d.OnInput += any;
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

		public string type;
		public InputState eventState;
		public Vector2 delta;

		public InputEvent(){

		}

		public InputEvent(string type,InputState state,Vector2 delta){
			this.type = type;
			this.eventState = state;
			this.delta = delta;
		}
	}

	public enum InputState
	{
		Down,
		Move,
		Up
	}

}