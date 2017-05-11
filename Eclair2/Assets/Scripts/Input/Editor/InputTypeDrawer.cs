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
					EditorGUI.LabelField (position, "InputTypes is not set");
				else {
					//いよいよ描画していくよ
					List<string> inputTypes = EclairInput.inputTypes.inputTypes;
					int[] inputTypeNumbers = GenerateOptionValues(inputTypes.Count);

					if (!string.IsNullOrEmpty (property.stringValue)) {
						inputTypeAttribute.selectedValue = inputTypes.IndexOf (property.stringValue);
					}

					inputTypeAttribute.selectedValue = EditorGUI.IntPopup(position,
						label.text,
						inputTypeAttribute.selectedValue,
						EclairInput.inputTypes.inputTypes.ToArray(),
						inputTypeNumbers);
					property.stringValue = inputTypes[inputTypeAttribute.selectedValue];
				}
			} else {
				EditorGUI.PropertyField (position, property);
			}

			EditorGUI.EndProperty ();
		}

		private int[] GenerateOptionValues(int count){
			int[] numbers = new int[count];

			for (int i = 0; i < count; i++) {
				numbers [i] = i;
			}
			return numbers;
		}

	}

}
