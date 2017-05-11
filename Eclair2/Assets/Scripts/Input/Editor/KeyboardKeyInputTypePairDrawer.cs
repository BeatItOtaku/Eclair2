using UnityEngine;
using UnityEditor;
using System.Collections;

namespace wararyo.EclairInput
{

	[CustomPropertyDrawer (typeof(KeyboardKeyInputTypePair))]
	public class KeyboardKeyInputTypePairDrawer : PropertyDrawer
	{
		public override void OnGUI(Rect position, SerializedProperty property, GUIContent label){
			label = EditorGUI.BeginProperty (position, label,property);

			Rect keyCodeRect = new Rect (12, position.y, EditorGUIUtility.labelWidth - 14, EditorGUIUtility.singleLineHeight);
			Rect inputTypeRect = new Rect (EditorGUIUtility.labelWidth, position.y, position.width - EditorGUIUtility.labelWidth, EditorGUIUtility.singleLineHeight);

			EditorGUI.PropertyField (keyCodeRect, property.FindPropertyRelative ("keyCode"),GUIContent.none);
			EditorGUI.PropertyField (inputTypeRect, property.FindPropertyRelative ("inputType"), GUIContent.none);

			EditorGUI.EndProperty ();
		}
	}

}