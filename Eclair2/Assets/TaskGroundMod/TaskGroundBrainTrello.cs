using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using MiniJSON;
#if UNITY_EDITOR
using UnityEditor;
#endif

namespace wararyo.TaskGround
{

    public class TaskGroundBrainTrello : TaskGroundBrainBase
    {
		private const string APIURL_NEWBOARD = "https://api.trello.com/1/boards?key={0}&token={1}&name={2}&idBoardSource={3}";
		private const string APIURL_CARDS = "https://api.trello.com/1/boards/{0}/cards?key={1}&token={2}&fields=name,desc,shortUrl";

		private string trelloToken = "";
		private string trelloBoardId = "";
		private string trelloCopiedBoardId = "";

        new void Start()
        {
            base.Start();
			#if UNITY_EDITOR
			trelloToken = EditorUserSettings.GetConfigValue (Trello.KEY_TOKEN);
			trelloBoardId = EditorUserSettings.GetConfigValue (Trello.KEY_BOARD);
			trelloCopiedBoardId = EditorUserSettings.GetConfigValue(Trello.KEY_COPIEDBOARD);
			#endif

        }

        new void Update()
        {
            base.Update();
        }

		//Called in Sync()
		protected override IEnumerator OnSyncStarted ()
		{
			yield return StartCoroutine (DuplicateBoard ());
		}

		//Called in Sync()
		protected override IEnumerator Push(Change c)
        {
			yield return null;
        }

		//Called in Sync()
		protected override IEnumerator Pull(Action<List<Task>> callback)
		{
			#if UNITY_EDITOR
			trelloToken = EditorUserSettings.GetConfigValue (Trello.KEY_TOKEN);
			trelloBoardId = EditorUserSettings.GetConfigValue (Trello.KEY_BOARD);
			trelloCopiedBoardId = EditorUserSettings.GetConfigValue(Trello.KEY_COPIEDBOARD);
			#endif

			WWW www = new WWW(string.Format(APIURL_CARDS,trelloCopiedBoardId,Trello.APIKEY,trelloToken));
			yield return www;
			if (!string.IsNullOrEmpty (www.error)) {
				Debug.Log (www.error);
				callback (null);
			} else if (!string.IsNullOrEmpty (www.text)) {
				Debug.Log (www.text);
				IList json = (IList)MiniJSON.Json.Deserialize (www.text);

				List<Task> l = new List<Task> ();

				foreach (IDictionary b in json) {
					Task t = Trello.TrelloCardToTask (b);
					l.Add (t);
				}

				//l.Add (new Task ("hogehoge", new Vector3 (1, 0, 1), "ちくわ大明神", "ちくわ", "https://wararyo.com"));
				//l.Add (new Task ("piyopiyo", new Vector3 (10, 0, 10), "私たちはここにいます\nここには夢がちゃんとある", "わーい", "https://wararyo.com"));
				callback (l);
			}
        }

		IEnumerator DuplicateBoard(){
			WWWForm form = new WWWForm ();
			form.AddField ("hoge", "huga");
			WWW www = new WWW(string.Format(APIURL_NEWBOARD,Trello.APIKEY,trelloToken,"電撃少女エクレア",trelloBoardId),form);
			yield return www;
			if (!string.IsNullOrEmpty (www.error)) {
				Debug.Log (www.error);
			} else if (!string.IsNullOrEmpty (www.text)) {
				IDictionary json = (IDictionary) MiniJSON.Json.Deserialize (www.text);
				trelloCopiedBoardId = (string)json ["id"];
				Debug.Log ((string)json ["name"]);
				EditorUserSettings.SetConfigValue (Trello.KEY_COPIEDBOARD, trelloCopiedBoardId);
			}
		}
    }

}
