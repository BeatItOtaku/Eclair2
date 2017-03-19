using UnityEngine;
using System.Collections;

public class TimeManager : MonoBehaviour {

	private static TimeManager mInstance;

	private float speed = 4;

	private bool isStopping = false;

	private TimeManager()
	{
		//startMapLoad();
		//Debug.Log("Create SampleSingleton instance.");
	}

	public static TimeManager Instance
	{

		get
		{

			if (mInstance == null)
			{
				GameObject go = new GameObject("TimeManager");
				mInstance = go.AddComponent<TimeManager>();
			}

			return mInstance;
		}
	}

	void Start()
	{
		DontDestroyOnLoad(this);
	}

	public void theWorld(float stopTime){
		if(!isStopping) StartCoroutine (theWorld_raw (stopTime));
	}

	private IEnumerator theWorld_raw(float stopTime){
		//Debug.Log ("startTheWorld");
		isStopping = true;
		float scale = 0.005f;
		Time.timeScale = scale;
		yield return new WaitForSecondsRealtime (stopTime);
		isStopping = false;

		while (scale < 1) {
			scale += Time.unscaledDeltaTime;
			Time.timeScale = scale;
			yield return null;
		}
		Time.timeScale = 1;
		//Debug.Log ("endTheWorld");

	}

}
