using System;

namespace AssemblyCSharp
{
	public class EmptyClass
	{
		public EmptyClass ()
		{
		}
	}
}
/*
public void EventCount(int eventCount){
	eventCount++;
	switch (eventCount) {
	case 0:
	case 1:
		//ロックオンのチュートリアルが表示される 
		GameObject.Find ("Tutorial_LockOn").GetComponent<AnimationQueue_Tutorial> ().Queue ();
		break;
	case 2:
		GameObject.Find ("Tutorial_LockOn").GetComponent<AnimationQueue_Tutorial> ().Queue ();
		break;
	case 3:
		//SBTのチュートリアルが表示される
		GameObject.Find ("Hint_Enemy").GetComponent<AnimationQueue_InAndOut> ().Queue ();
		GameObject.Find ("Tutorial_Thunder").GetComponent<AnimationQueue_Tutorial> ().Queue ();
		event2_bolt.SetActive (false);

		event3_zako.SetActive (true);
		event3_bolt.SetActive (true);
		break;
	case 4:
		//ETOのチュートリアルが表示される
		GameObject.Find ("Hint_Enemy").GetComponent<AnimationQueue_InAndOut> ().Queue ();
		GameObject.Find ("Tutorial_Thunder").GetComponent<AnimationQueue_Tutorial> ().Queue ();
		GameObject.Find ("Tutorial_Etoile").GetComponent<AnimationQueue_Tutorial> ().Queue ();

		event3_bolt.tag = "Untagged";
		event4_bolt1.tag = "Bolt";				
		event4_bolt2.tag = "Bolt";	
		break;
	case 5:
		//ETOで移動用のボルトが現れる
		GameObject.Find ("Hint_Gun").GetComponent<AnimationQueue_InAndOut> ().Queue ();
		event5_bolt.SetActive (true);
		break;
	case 6:
		//ボルト射出のチュートリアルが表示される
		GameObject.Find ("Hint_Gun").GetComponent<AnimationQueue_InAndOut> ().Queue ();
		GameObject.Find ("Tutorial_Etoile").GetComponent<AnimationQueue_Tutorial> ().Queue ();
		GameObject.Find ("Tutorial_Bolt").GetComponent<AnimationQueue_Tutorial> ().Queue ();
		event5_bolt.SetActive (false);
		event6_gun.SetActive (false);
		event6_EclairGun.SetActive (true);
		gunGet = true;
		break;
	case 7:
		//雑魚との戦闘
		//GameObject.Find("Hint_Bolt").GetComponent<AnimationQueue_InAndOut>().Queue();
		GameObject.Find ("Hint_Enter").GetComponent<AnimationQueue_InAndOut> ().Queue ();
		event8_zako.SetActive (true);
		break;
	}
}*/