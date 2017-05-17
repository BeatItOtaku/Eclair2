using UnityEngine;
using System.Collections;

namespace wararyo.EclairInput{

	public class Keyboard : InputDevice {

		public Keyboard(string name) : base(name){
			
			deviceName = name;
		}

		public KeyboardKeyConfig keyConfig;
		public string mouseXAxisName = "Camera X";
		public string mouseYAxisName = "Camera Y";
		public string keyboardXAxisName = "Horizontal";
		public string keyboardYAxisName = "Vertical";
		public float MouseThreshold = 0.2f;

		//InputDeviceはMonoDevelopを継承してないからこのUpdateは自動で呼ばれない
		//だからEclairInputDriverから実行することで疑似的にUpdateを再現する
		public override void Update ()
		{
			//マウス移動
			float mouseX = Input.GetAxis (mouseXAxisName);
			float mouseY = Input.GetAxis (mouseYAxisName);
			if (Mathf.Pow (mouseX, 2) + Mathf.Pow (mouseY, 2) >= MouseThreshold) {
				onInput (keyConfig.mouseMove, InputState.Move, new Vector2 (mouseX, mouseY));
			}
			//ひだりクリ
			if (Input.GetMouseButtonDown (0))
				onInput (keyConfig.mouseLeft, InputState.Down);
			if (Input.GetMouseButtonUp (0))
				onInput (keyConfig.mouseLeft, InputState.Up);
			//ホイールクリ
			if (Input.GetMouseButtonDown (2))
				onInput (keyConfig.mouseMiddle, InputState.Down);
			if (Input.GetMouseButtonUp (2))
				onInput (keyConfig.mouseMiddle, InputState.Up);
			//みぎクリ
			if (Input.GetMouseButtonDown (1))
				onInput (keyConfig.mouseRight, InputState.Down);
			if (Input.GetMouseButtonUp (1))
				onInput (keyConfig.mouseRight, InputState.Up);
			//ホイール
			if(Input.mouseScrollDelta.magnitude > MouseThreshold)
				onInput(keyConfig.mouseWheel, InputState.Move, Input.mouseScrollDelta);

			//キーボード移動
			float keyX = Input.GetAxis (keyboardXAxisName);
			float keyY = Input.GetAxis (keyboardYAxisName);
			if (Mathf.Pow (keyX, 2) + Mathf.Pow (keyY, 2) > 0) {
				onInput (keyConfig.axis, InputState.Move, new Vector2 (keyX, keyY));
			}

			foreach (KeyboardKeyInputTypePair p in keyConfig.keyConfig) {
				if(Input.GetKeyDown((KeyCode)p.keyCode))	onInput (p.inputType, InputState.Down, Vector2.zero);
				if(Input.GetKeyUp((KeyCode)p.keyCode))		onInput (p.inputType, InputState.Up, Vector2.zero);
			}
		}

		public void onInput(string t, InputState s){
			onInput (t, s, Vector2.zero);
		}

		public void onInput(string t,InputState s, Vector2 d){
			OnInput (new InputEvent (t, s, d));
		}
	}

}