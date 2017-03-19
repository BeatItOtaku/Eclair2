using UnityEngine;
using System.Collections;

/// <summary>
/// EnemyBaseの使い方
/// このクラスは抽象クラスと呼ばれる特殊なクラスなので、継承しないと使えません。
/// このクラスを継承した新たなクラスを作成し、maxHPを定義、
/// その後、Damageメソッドを定義してください。
/// エクレアはEnemyBaseを継承したクラス(以降、継承クラス)をコンポーネントとして持つゲームオブジェクトに攻撃判定が起こった場合、
/// そのコンポーネントの中のDamageメソッドを実行します。
/// damageの値は、ボルト射出では1、SBTでは15、エトワールでは30となるので、
/// その値をどう処理するかは各継承クラスで自由です
/// 例えばボスのスクリプトでは、maxHPを3として、damageの値にかかわらず何かしら攻撃を食らったらHPが1減る、といった実装でもいでしょう。
/// </summary>
public abstract class EnemyBase : MonoBehaviour {

	public bool isDying = false;

	/// <summary>
	/// ダメージを食らいます。
	/// damageの値は、ボルト射出では1、SBTでは15、エトワールでは30
	/// </summary>
	/// <param name="damage">Damage.</param>
	public void Damage (int damage){
		Damage (damage, new Vector3 (0, 0, 0));
	}

	/// <summary>
	/// ダメージを食らいます。
	/// damageの値は、ボルト射出では1、SBTでは15、エトワールでは30
	/// </summary>
	/// <param name="damage">ダメージ値</param>
	/// <param name="direction">どの方向へ攻撃を食らったか</param>
	public abstract void Damage (int damage, Vector3 direction);
}
