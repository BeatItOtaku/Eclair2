using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using wararyo.EclairCueMaker;
using System;

public class CueEvent_MoveToNearestCheckpoint : CueEventBase {

	List<GameObject> targetList = new List<GameObject>();

	void Start () {
	}

    /// <summary>
    /// CueSceneEditorのCue編集画面においてCueEventリストに表示される文字列です。
    /// </summary>
    public override string EventName
    {
        get
        {
            return "Player MoveToNearestCheckPoint";
        }
    }

    //public string stateName = "Anim";

    /// <summary>
    /// CueEvent同士を区別するときに用いる識別子です。
    /// 他と被らない一意的な文字列である必要があります。
    /// 適当にキーボードをガチャガチャしてください。
    /// このCueEventが何らかのCueから参照されているときにこの値を変更した場合、動作は保証されません。
    /// </summary>
    public override string EventID
    {
        get
        {
            return "9h7df5w75ki6796hsi49";
        }
    }

    /// <summary>
    /// CueSceneEditorのCue編集画面でこのCueEventを指定したとき、ParamTypeで指定した型に応じて引数編集GUIが表示されます。
    /// CueScenePlayerがCueメソッドを実行するとき、引数paramにはParamTypeで指定した型の変数が入ります。
    /// 現在サポートしているParamTypeは以下の通りです。
    /// string
    /// int
    /// float
    /// GameObject
    /// </summary>
    public override Type ParamType
    {
        get
        {
			return typeof(void);
        }
    }

	private int CompareRestartPosition(GameObject a,GameObject b){
		float delta = Vector3.Distance(a.transform.position,gameObject.transform.position) - Vector3.Distance(b.transform.position, gameObject.transform.position);
		if (delta > 0)
			return 1;
		else if (delta == 0)
			return 0;
		else//delta < 0
			return -1;
	}

    public override void Cue(object param)
    {
		targetList = new List<GameObject> (GameObject.FindGameObjectsWithTag ("RestartPosition"));
		targetList.Sort (CompareRestartPosition);
		gameObject.transform.position = targetList [0].transform.position;
	}
}
