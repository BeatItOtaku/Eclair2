﻿using UnityEngine;
using System.Collections;

public class Bullet : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}

	// Update is called once per frame
	void Update () {
		gameObject.transform.position += Vector3.forward * Time.deltaTime * 20;
	
	}
}
