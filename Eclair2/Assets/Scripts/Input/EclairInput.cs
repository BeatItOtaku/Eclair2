using UnityEngine;
using System.Collections.Generic;
using System;

namespace wararyo.EclairInput {

	public static class EclairInput {

		public static List<Controller> Controllers;

		static EclairInput(){
			Controllers = new List<Controller>();
		}
	}

	public class Controller {
		private string deviceName;
		public string DeviceName{ get { return deviceName; } }

		public Action OnInput(InputEvent e);

		public Controller(string name){
			deviceName = name;
		}
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