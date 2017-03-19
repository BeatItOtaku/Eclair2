using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class ThunderEffectController : MonoBehaviour {

    public LineRenderer core;
    //public LineRenderer clad;
	public List<LineRenderer> clads = new List<LineRenderer> ();
	public List<float> cladWidth = new List<float>();
	public float coreWidth = 0.6f;

    public Vector3 startPoint,endPoint;

    public float cladSpaceInterval = 1.0f;
    public float randomWidth = 0.8f;
    public float speed = 10.0f;//電撃が進むスピード
    public float cladTimeInterval = 0.1f;

	public float coreFadeFactor = 0.8f;
	public float cladFadeFactor = 0.9f;

    private List<Vector3> vertexes = new List<Vector3>();
    private const int MaxVertexSize = 128;

	private float currentCoreWidth;
	private List<float> currentCladWidth = new List<float>();

	private const float FadeTime = 1.0f;//この時間経過するとstopEffectします。
	private float time;

    //アニメーション関連
    //private float length;//startPointとendPointの長さ
    //private Vector3 endPoint_raw;//startPointから徐々にendPointに近づいていく点
    //private float cursor = 0;//アニメーションがどれだけ進んでるか 0からlengthまでの値を取る

    private float cladTimeIntervalCount = 0;

	// Use this for initialization
	void Start () {
        //vertexes = new Vector3[MaxVertexSize];
        StartEffect();
		//currentCladWidth = new List<float> ();
	}
	
	// Update is called once per frame
	void LateUpdate () {
		time += Time.deltaTime;
		if (time > FadeTime) {
			StopEffect ();
			return;
		}
	
		currentCoreWidth *= coreFadeFactor;
		core.SetWidth (currentCoreWidth, currentCoreWidth);

		for (int i = 0; i < clads.Count; i++) {
			currentCladWidth [i] *= cladFadeFactor;
			clads [i].SetWidth (currentCladWidth [i], currentCladWidth [i]);
		}


	}

    /// <summary>
    /// クラッドで使用するギザギザの線の頂点を作成します。
    /// </summary>
    /// <returns>頂点の数</returns>
    public int GenerateVertexes(Vector3 start,Vector3 end)
    {
        float len = (end - start).magnitude;
        int size = (int)(Mathf.Min(len/cladSpaceInterval,MaxVertexSize) + 0.5);//切り捨てではなく四捨五入にするために0.5を足す
        vertexes.Clear();
        
        for(int i = 0; i < size; i++)
        {
            Vector3 vec = Vector3.Lerp(start, end, (float)i / size);//int同士の割り算を防ぐためわざわざfloatにキャスト
            vec += new Vector3(myRandom(), myRandom(), myRandom());
            vertexes.Add(vec);
        }

        return size;
    }

    private float myRandom()
    {
        return Random.Range(-randomWidth, randomWidth);
    }

    /// <summary>
    /// 雷エフェクトを開始します。
    /// </summary>
    /// <param name="start"></param>
    /// <param name="end"></param>
    public void StartEffect(Vector3 start, Vector3 end)
    {
        startPoint = start;
        endPoint = end;
        StartEffect();
    }

    public void StartEffect()
    {
        //length = (endPoint - startPoint).magnitude;
        //cursor = 0;
		currentCladWidth.Clear();

		core.SetWidth (coreWidth, coreWidth);
		for (int i = 0; i < clads.Count; i++) {
			clads [i].SetWidth (cladWidth [i], cladWidth [i]);
			currentCladWidth.Add (cladWidth [i]);
		}
		currentCoreWidth = coreWidth;
		//currentCladWidth = cladWidth;

		time = 0;

		gameObject.SetActive(true);
		ReloadCore ();
		ReloadClad ();
    }

	public void StopEffect(){
		gameObject.SetActive(false);
		//cursor = 0;//念のためここでリセットしとく
	}

    public void ReloadCore()
    {
        core.SetPositions(new Vector3[] { startPoint, endPoint });
    }

	/// <summary>
	/// クラッドの頂点を更新します。引数を指定しない場合はすべてのクラッドに対して実行します。
	/// </summary>
	private void ReloadClad(){
		foreach(LineRenderer lr in clads){
			ReloadClad (lr);
		}
	}

	private void ReloadClad(LineRenderer clad)
    {
        int size = GenerateVertexes(startPoint, endPoint);
		clad.SetVertexCount(size);
        //clad.SetPositions(vertexes);
        clad.SetPositions(vertexes.ToArray());
    }
}
