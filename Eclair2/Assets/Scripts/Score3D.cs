using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Score3D : MonoBehaviour {

	public List<ScoreTexture> scoreTex;
	public float autoDestroyTime = 0.8f;
	private int score;
	public int Score{
		get{
			return score;
		}
		set{
			score = value;
			ScoreTexture st = scoreTex.Find (x => x.score == value);
			if (st != null)
				GetComponentInChildren<Renderer> ().material.SetTexture ("_MainTex",st.texture);//ラムダ式を使ってみたよ
		}
	}

	// Use this for initialization
	void Start () {
		scoreTex = new List<ScoreTexture> ();
	}
	
	// Update is called once per frame
	void Update () {
		Destroy (gameObject, autoDestroyTime);
	}

	public void LookAt(Vector3 LookAt){
		this.transform.LookAt (LookAt);
		this.transform.rotation = Quaternion.Euler (0, this.transform.rotation.eulerAngles.y, 0);
	}
}

[System.Serializable]
public class ScoreTexture {
	public int score;
	public Texture texture;
}
