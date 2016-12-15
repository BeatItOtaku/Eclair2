using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class HPGaugeController : MonoBehaviour {

    public int maxHP = 100;
    public float smoothFactor = 0.8f;//0<smoothFactor<1の範囲

    public GameObject wall;//HPって書いてある後ろの枠
    public GameObject core;//うごうごしてる部分
    public GameObject empty;//HPゲージの空の部分 見た目はcoreより後ろにありそうだけど実はcoreより前面にある

    public Sprite wallHigh, wallLow;

    private Animator coreAnim;
    private Vector2 emptySize;
    private Image wallImage;

    private int currentHP_;//直接触らないこと
    public int currentHP
    {
        get
        {
            return currentHP_;
        }
        set
        {
            currentHP_ = Mathf.Clamp(value,0,maxHP);
            OnCurrentHPChanged(currentHP_);
        }
    }
	private int hp;

    private float HPGaugeWidth;
    private float targetWidth;

	// Use this for initialization
	void Start () {
        HPGaugeWidth = core.GetComponent<RectTransform>().sizeDelta.x;
        coreAnim = core.GetComponent<Animator>();
        wallImage = wall.GetComponent<Image>();
        //Debug.Log(HPGaugeWidth);
        currentHP = maxHP;
	}
	
	// Update is called once per frame
	void Update () {
        setHP_raw(Mathf.Lerp(getCurrentHPWidth(), targetWidth, smoothFactor));
	}

    private void OnCurrentHPChanged(int hp)
    {
        targetWidth = HPGaugeWidth * hp / maxHP;
        if(hp > 30)//HPに応じて色を変える関係
        {
            coreAnim.SetBool("isLow", false);
            wallImage.sprite = wallHigh;
        }
        else
        {
            coreAnim.SetBool("isLow", true);
            wallImage.sprite = wallLow;
        }
    }

    /// <summary>
    /// HPゲージの幅を指定します。まあ実質的にはemptyの幅を変えてるんだけど
    /// </summary>
    /// <param name="width"></param>
    private void setHP_raw(float width)
    {
        emptySize = empty.GetComponent<RectTransform>().sizeDelta;
        emptySize.x = HPGaugeWidth - width;
        empty.GetComponent<RectTransform>().sizeDelta = emptySize;
    }

    private float getCurrentHPWidth()
    {
        return HPGaugeWidth - empty.GetComponent<RectTransform>().sizeDelta.x;
    }

    /*public void Damage(int hp)
    {
        currentHP -= hp;
    }*/
}
