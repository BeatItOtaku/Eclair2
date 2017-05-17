using UnityEngine;
using UnityEditor;
using System.Collections.Generic;

namespace wararyo.EclairInput {

	[CustomPropertyDrawer (typeof(InputTypeAttribute))]
	public class InputTypeDrawer : PropertyDrawer {

		private InputTypeAttribute inputTypeAttribute {get { return (InputTypeAttribute)attribute; }}

		public override void OnGUI (Rect position, SerializedProperty property, GUIContent label)
		{
			label = EditorGUI.BeginProperty (position, label,property);

			if (property.propertyType == SerializedPropertyType.String) {
				if (EclairInput.inputTypes == null)
					EditorGUI.LabelField (position, label.text,"InputTypes is not set");
				else {
					//いよいよ描画していくよ
					List<string> displayInputTypes = new List<string>(EclairInput.inputTypes.inputTypes);

					//Noneを足す
					displayInputTypes.Insert(0, " - ");

					int[] inputTypeNumbers = GenerateOptionValues(displayInputTypes.Count);

					if (string.IsNullOrEmpty (property.stringValue)) inputTypeAttribute.selectedValue = -1;
					else inputTypeAttribute.selectedValue = EclairInput.inputTypes.inputTypes.IndexOf (property.stringValue);

					inputTypeAttribute.selectedValue = EditorGUI.IntPopup(position,
						label.text,
						inputTypeAttribute.selectedValue,
						displayInputTypes.ToArray(),
						inputTypeNumbers);
					if (inputTypeAttribute.selectedValue == -1)
						property.stringValue = "";
					else property.stringValue = EclairInput.inputTypes.inputTypes[inputTypeAttribute.selectedValue];
				}
			} else {
				EditorGUI.PropertyField (position, property);
			}

			EditorGUI.EndProperty ();
		}

		private int[] GenerateOptionValues(int count){
			int[] numbers = new int[count];

			for (int i = 0; i < count; i++) {
				numbers [i] = i - 1; //Noneが-1になるように
			}
			return numbers;
		}

	}

}
