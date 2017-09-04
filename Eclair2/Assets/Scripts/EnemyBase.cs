using UnityEngine;
using System.Collections;

/// <summary>
/// EnemyBaseの使い方
/// このクラスは抽象クラスと呼ばれる特殊なクラスなので、継承しないと使えません。
/// このクラスを継承した新たなクラスを作成し、maxHPを定義、
/// その後、Damageメソッドを定義してください。
/// 継承先で使える変数は、player(エクレア）,currentHp（現在のHP）,MaxHP,anim,audio
/// エクレアはEnemyBaseを継承したクラス(以降、継承クラス)をコンポーネントとして持つゲームオブジェクトに攻撃判定が起こった場合、
/// そのコンポーネントの中のDamageメソッドを実行します。
/// </summary>
public abstract class EnemyBase : MonoBehaviour {

	public bool isDying = false;//敵が死んでいるかどうか

	protected GameObject player;
	protected int currentHp;
	protected int MaxHP;


	protected Animator anim;
	protected AudioSource audio;

	 void Start () {
		player = GameObject.FindGameObjectWithTag ("Player");
		anim = GetComponent<Animator>();
		audio = GetComponent<AudioSource>();
	}

	/// <summary>
	/// ダメージを食らいます。
	/// damageの値は、ボルト射出では1、SBTでは15、エトワールでは30
	/// </summary>
	/// <param name="damage">Damage.</param>
	public void Damage (int damage){
		EnemyDamage (damage, new Vector3 (0, 0, 0));
	}

	/// <summary>
	/// ダメージを食らいます。
	/// damageの値は、ボルト射出では1、SBTでは15、エトワールでは30
	/// </summary>
	/// <param name="damage">ダメージ値</param>
	/// <param name="direction">どの方向へ攻撃を食らったか</param>
	public abstract void EnemyDamage (int damage, Vector3 direction);
}
