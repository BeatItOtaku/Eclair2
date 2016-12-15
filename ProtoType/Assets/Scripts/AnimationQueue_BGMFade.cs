using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class AnimationQueue_BGMFade : AnimationQueueBase {

    public enum TransitionKind { In, Out};

    public TransitionKind transitionKind = TransitionKind.In;

    public float duration = 1;
    private float timeCursor = 0;

    private float startVolume = 1;

    private bool isAnimating = false;
    public BGMController bgm;

	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
        if (isAnimating)
        {
            timeCursor += Time.deltaTime;
            float a = 0;
            if (timeCursor >= duration)
            {
                a = transitionKind == TransitionKind.In ? 1 : 0;
                isAnimating = false;
            }
            else
            {
                a = transitionKind == TransitionKind.In ? (timeCursor / duration) : (1 - (timeCursor / duration));
            }
            bgm.Volume = startVolume * a;
        }
	}

	public override void Queue(){
        isAnimating = true;
        startVolume = bgm.Volume;
        timeCursor = 0;
	}
}
