using UnityEngine;
using System.Collections;

public class ObjectBlinker : MonoBehaviour
{
	private static ObjectBlinker mInstance;

	private GameObject blinkee;
	private float timeCursor = 0;
	private float interval = 0.05f;
	private float timelength = 1;

	private bool isVisible = true;


	private ObjectBlinker()
	{
		//startMapLoad();
		//Debug.Log("Create SampleSingleton instance.");
	}

	public static ObjectBlinker Instance
	{

		get
		{

			if (mInstance == null)
			{
				GameObject go = new GameObject("ObjectBlinker");
				mInstance = go.AddComponent<ObjectBlinker>();
			}

			return mInstance;
		}
	}

	void Start()
	{
		DontDestroyOnLoad(this);
	}

	void Update()
	{
		if (blinkee != null) {
			timeCursor += Time.deltaTime;
			//Debug.Log (timeCursor / interval);
			setSkinnedMeshRendererVisible (blinkee, ((int)(timeCursor / interval) % 2) == 0);

			if(timeCursor > timelength){
				//点滅終わり
				setSkinnedMeshRendererVisible(blinkee,true);
				blinkee = null;
			}
		}
	}

	void setSkinnedMeshRendererVisible(GameObject go,bool isVisible){
		foreach (SkinnedMeshRenderer m in go.GetComponentsInChildren<SkinnedMeshRenderer>()) {
			m.enabled = isVisible;
		}
	}

	/// <summary>
	/// オブジェクトを指定した秒数点滅させます。
	/// </summary>
	/// <param name="go">点滅させるGameObject.</param>
	/// <param name="length"></param>
	public void Blink(GameObject go, float length){
		blinkee = go;
		timelength = length;
		timeCursor = 0;
	}
}