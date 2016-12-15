using UnityEngine;
using System.Collections;

public class ButtonSE : MonoBehaviour {

    private AudioSource audio;

    public AudioClip hoverSound;
    public AudioClip ClickSound;

	// Use this for initialization
	void Start () {
        audio = GetComponent<AudioSource>();
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    //EventTriggerコンポーネントからPointerEnterイベントを作成しこれを登録
    public void OnHover()
    {
        audio.PlayOneShot(hoverSound);
    }

    //ButtonのOnClickイベントにこれを登録
    public void OnClick()
    {
        audio.PlayOneShot(ClickSound);
    }
}
