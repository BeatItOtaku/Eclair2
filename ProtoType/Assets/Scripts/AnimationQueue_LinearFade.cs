using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class AnimationQueue_LinearFade : AnimationQueueBase {

    public enum TransitionKind { In, Out};

    public TransitionKind transitionKind = TransitionKind.In;

    public float duration = 1;
    private float timeCursor = 0;

    private bool isAnimating = false;
    private Image image;

	// Use this for initialization
	void Start () {
        image = GetComponent<Image>();
        if (transitionKind == TransitionKind.In) image.enabled = false;
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
                if (transitionKind == TransitionKind.Out) image.enabled = false;
                isAnimating = false;
            }
            else
            {
                a = transitionKind == TransitionKind.In ? (timeCursor / duration) : (1 - (timeCursor / duration));
            }
            Color c = image.color;
            c.a = a;
            image.color = c;
        }
	}

	public override void Queue(){
        if (transitionKind == TransitionKind.In) image.enabled = true;
        isAnimating = true;
        timeCursor = 0;
	}
}
