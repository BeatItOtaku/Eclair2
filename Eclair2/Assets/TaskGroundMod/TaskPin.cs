using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;
#if UNITY_EDITOR
using UnityEditor;
#endif

namespace wararyo.TaskGround
{

	public class TaskPin : EnemyBase
	{

		const string APIURL_DELETECARD = "https://api.trello.com/1/cards/{0}?key={1}&token={2}&closed=true";

        public float size = 1;
        public float scaleFactor = 0.1f;
        public float minSize = 0.2f;

		private AudioSource audiosource;
		public AudioClip hit;

		public GameObject effect;
		private GameObject breakTask;
		private BreakedTask bt;

        public TextMesh titleText;
		[SerializeField,HideInInspector]
        private Task m_task;
		public Task task{
			get{
				return m_task;
			}
			set{
				m_task = value;
				titleText.text = task.title;
			}
		}

        // Use this for initialization
        void Start()
        {
			MaxHP = 10;
			currentHp = MaxHP;

			audiosource = GetComponent<AudioSource> ();
			breakTask = GameObject.Find ("BreakedTask");
			bt = breakTask.GetComponent<BreakedTask> ();
        }

        // Update is called once per frame
        void Update()
        {
			if (player == null)
				player = GameObject.FindWithTag ("Player");

            //ずっとこっち向く
            Vector3 target = Camera.main.transform.position;
            target.y = this.transform.position.y;
            this.transform.LookAt(target);

            //遠くに行くほど大きくなるか小さくなる
			float distance = Vector3.Distance(player.transform.position, transform.position);
            float scale = Mathf.Max(minSize,size + (scaleFactor * distance));
            transform.localScale = new Vector3(scale, scale, scale);
        }

		public static void Instantiate(Transform parent, Task task, GameObject player, float size, float scaleFactor, float minSize)
        {
#if UNITY_EDITOR
            const string PrefabGUID = "a0a7bc9fda6e3194ea8fa6d188e3f802";
			string prefabPath = AssetDatabase.GUIDToAssetPath(PrefabGUID);
			Object prefab = AssetDatabase.LoadAssetAtPath<Object>(prefabPath);

			GameObject go = Instantiate<GameObject>((GameObject)prefab,parent);
			go.transform.localPosition = task.position;
			TaskPin tp = go.GetComponent<TaskPin>();
			tp.task = task;
			tp.player = player;
			tp.size = size;
			tp.scaleFactor = scaleFactor;
			tp.minSize = minSize;
#endif
        }

		public override void EnemyDamage (int damage, Vector3 direction)
		{
			if (TimeCounter.countStart == true) {
				currentHp -= damage;
			}
			audiosource.PlayOneShot (hit);
			if (currentHp < 0) {
				StartCoroutine (TrelloDelete ());
				Instantiate (effect, transform.position + new Vector3(0,3,0), effect.transform.rotation);
				bt.currentBreakedTask++;
				gameObject.SetActive (false);
				//Destroy (gameObject);
			}
		}

		IEnumerator TrelloDelete(){
			string trelloToken = "";
			#if UNITY_EDITOR
			trelloToken = EditorUserSettings.GetConfigValue(Trello.KEY_TOKEN);
			#endif
			UnityWebRequest www = UnityWebRequest.Put(string.Format(APIURL_DELETECARD,task.ID,Trello.APIKEY,trelloToken),"hogehoge");
			//Debug.Log ("wei");
			www.Send();
			while (!www.isDone) yield return null;
			//Debug.Log ("soiya");
			if (!string.IsNullOrEmpty (www.error)) {
				//Debug.Log (www.error);
			} else if (!string.IsNullOrEmpty (www.downloadHandler.text)) {
				//Debug.Log (www.downloadHandler.text);
			} else {
				//Debug.Log ("nanndeyanenn");
			}
			yield return null;
		}
    }

}