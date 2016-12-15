using UnityEngine;
using System.Collections;

public class EffectAutoDestroy : MonoBehaviour {

	public float playbackSpeed = 10;

	// Use this for initialization
	void Start () {
		
		Destroy (gameObject, 3);
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
