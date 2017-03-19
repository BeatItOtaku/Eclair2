using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class AutoButtonPress : MonoBehaviour {

	public float timeToPress = 8;
	private float timeCursor = 0;

	public bool enableWhenAwake = true;
	private bool isCounting = false;

	public Image progress;

	// Use this for initialization
	void Start () {
		if (enableWhenAwake)
			startCount ();
		//progress = GetComponentInChildren
	}
	
	// Update is called once per frame
	void Update () {
		if (isCounting) {
			timeCursor += Time.deltaTime;
			if (timeCursor >= timeToPress) {
				isCounting = false;
                Debug.Log("Invoke");
				GetComponent<Button> ().onClick.Invoke();
			} else {
				progress.fillAmount = timeCursor / timeToPress;
			}
		}
	}

	public void startCount(){
		isCounting = true;
		timeCursor = 0;
	}

    public void stopCount()
    {
        isCounting = false;
        timeCursor = 0;
    }
}
