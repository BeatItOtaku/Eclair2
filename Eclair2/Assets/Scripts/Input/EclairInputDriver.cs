using UnityEngine;
using System.Collections;

namespace wararyo.EclairInput {

	public class EclairInputDriver : MonoBehaviour {

		public InputTypes inputTypes;

		// Use this for initialization
		void Start () {
			
		}
		
		// Update is called once per frame
		void Update () {
			foreach (InputDevice d in EclairInput.InputDevices) {
				d.Update ();
			}
		}
	}

}
