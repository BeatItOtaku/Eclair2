using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using System.Collections;

public class TitleManager : MonoBehaviour {

    public AudioClip select;

	public GameObject dontDestroy;
    //public Text loadingText;

	public bool loadMapInEditor = false;

    private MapLoader scene;

    private bool isLoading = false;

    // Use this for initialization
    void Start () {
		DontDestroyOnLoad (dontDestroy);
        CameraController.cursorIsLocked = false;
        scene = MapLoader.Instance;
        //scene.startMapLoad();
    }

    // Update is called once per frame
    void Update () {
        if (Input.GetMouseButtonUp(0))
        {
            GetComponent<AudioSource>().PlayOneShot(select);
			NextLevel ();
            //TODO: シーン切り替え動作
        }
    }

	public void NextLevel(){
        //SceneManager.LoadSceneAsync (1);
        LoadScene();
	}

    private void LoadScene()
    {
		if (isLoading)
			return;
		
		SceneManager.LoadSceneAsync ("Loading", LoadSceneMode.Additive);
		if(!Application.isEditor || loadMapInEditor) scene.startMapLoad();
        isLoading = true;
        //scene.startGame();
    }
}
