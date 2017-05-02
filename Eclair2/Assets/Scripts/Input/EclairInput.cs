using UnityEngine;
using System.Collections;
using System;

namespace wararyo.EclairInput {

	public static class EclairInput {

		public static Controller[] Controllers;
	}

	public class Controller {

	}

	public class InputEvent {

		public enum EventType{
			Move,
			Shot,
			ETO
		}

		public EventType Type;

		public InputEvent(){

		}

		public InputEvent(EventType type){
			Type = type;
		}
	}

}