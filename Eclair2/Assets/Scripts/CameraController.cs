using UnityEngine;
using System.Collections;

/// <summary>
/// カメラを操作します。
/// 外から触るメソッドはStartLockOn、SwitchTarget、StopLockOnだけで十分なはずです。
/// </summary>
public class CameraController : MonoBehaviour
{
	public PlayerControlManager pcm;
	public GameObject player;
	public GameObject cameraParent;

	public  GameObject LookAt {
		get {
			if (pcm.etoOn == true) {
				return pcm.eto;
			}
			else if (LookAtObject.lookAt == true) {
				return cameraParent;
			} else {
				return player;
			}
				
		}
	}

	//Terrainの上を歩いてるときにカメラが地中に埋まらないようにするための記述。
	bool IsGrounded() 
	{
		return Physics.Raycast(transform.position + new Vector3(0,0.1f,0), -Vector3.up,  0.15f);
	}
	private Ray ground;
	private RaycastHit hit;
	private Vector3 hitPoint;
	private Vector3 cameraPosition;
	private float height = 500.0f;

	public Transform cameraTransform;   // 操作するカメラ
	public float mouseSensitivity = 300.0f;  // マウス感度
	public float defaultDistance = 3.0f;
	public float defaultAngle = 30.0f;//degree
	public float defaultY = 0.0f;

	public float maxAngle = 80.0f;
	public float minAngle = 5.0f;

	public float smoothFactor = 0.5f;

    public float cameraVerticalAngleOffset = 16;
    public float cameraVerticalAngleOffsetWhenLockOn = 45;

    public float lockOnFOV = 50;


    //読み取り専用プロパティ群
    /// <summary>
    /// (Read Only)カメラのグローバルY軸方向の回転を取得します。
    /// </summary>
    public float cameraY { get { return currentY; } }
    /// <summary>
    /// (Read Only)カメラの仰角を取得します。
    /// </summary>
    public float cameraAngle {  get { return currentAngle; } }

	private float targetY;    // カメラのY軸成分
	private float targetAngle;
	private float currentY;
	private float currentAngle;
	private float distance;
	private Vector3 cameraOffset;

	private bool isLockOn = false;
	private GameObject lockOnTarget;

	/// <summary>
	/// カメラのアングルを取得するよ
	/// </summary>
	/// <returns>xが立体Y軸方向の回転(右を向くほど大きい値)、yが仰角(上を向いてる時に負の値をとる)</returns>
	public Vector2 getCameraAngle(){
		return new Vector2 (targetY, targetAngle);
	}

	public static bool cursorIsLocked
	{
		get
		{
			return !Cursor.visible;
		}
		set
		{
			Cursor.visible = !value;
			if (value)
				Cursor.lockState = CursorLockMode.Locked;
			else Cursor.lockState = CursorLockMode.Locked;
		}
	}

	public void ResetCamera()
	{
		targetY = defaultY;
		targetAngle = defaultAngle;
	}

	void Start()
	{
		targetY = defaultY;
		targetAngle = defaultAngle;
		distance = defaultDistance;
	}

	void Awake()
	{
		cursorIsLocked = false;
	}

	void Update()
	{
		if (IsGrounded ()) {//カメラがTerrainに埋まらないようにする
			ground = new Ray (transform.position, Vector3.down);
			cameraPosition = gameObject.transform.position;
			if (Physics.Raycast (ground, out hit, Mathf.Infinity, 16)) {//レイヤー16はTerrain
				hitPoint = hit.point;
			}
			cameraPosition.y = hitPoint.y + height;
			gameObject.transform.position = cameraPosition;

		} 
		
	}

	// 全ての処理が終わったあとにカメラの位置を調整するためにLateUpdateにする
	void LateUpdate()
	{
		//カーソル関連
		if (Input.GetButtonUp("Fire"))
		{
			cursorIsLocked = true;
		}

		if (Input.GetKeyDown("escape"))
		{
			cursorIsLocked = false;
		}

        //float scroll = Input.GetAxis("Mouse ScrollWheel");
        //distance += scroll * 4;
        //Debug.Log("targetY = " + targetY + ", targetAngle = " + targetAngle);
       // if (cursorIsLocked) {
			if (isLockOn && lockOnTarget != null) {
				Vector2 rot = CaliculateTargetRotation (lockOnTarget);
				targetY = rot.y;
				targetAngle = rot.x;
				targetAngle += cameraVerticalAngleOffsetWhenLockOn;
				//Debug.Log("targetY = " + targetY + ", targetAngle = " + targetAngle);
			} else {
				
			//if (setCursor == false) {
					float deltaY = Input.GetAxis ("Camera X") * Time.deltaTime * mouseSensitivity;
					float deltaAngle = Input.GetAxis ("Camera Y") * Time.deltaTime * mouseSensitivity;
					//Debug.Log(deltaY + "," + deltaAngle);
					float deltaYAbs = Mathf.Abs (deltaY);
					float deltaAngleAbs = Mathf.Abs (deltaAngle);
				if (0.1 < deltaYAbs && deltaYAbs < 120)
						targetY += deltaY;
				if (0.1 < deltaAngleAbs && deltaAngleAbs < 90)
						targetAngle -= deltaAngle;
				//}
			}
		//}

        //Debug.Log("targetY = " + targetY + ", targetAngle = " + targetAngle);
        targetAngle = ClampAngle(targetAngle, minAngle, maxAngle);

        if (isLockOn) {//ロックオン状態の時はスムーズにする処理
			currentY = Mathf.LerpAngle (currentY, targetY, smoothFactor);
			currentAngle = Mathf.Lerp (currentAngle, targetAngle, smoothFactor);
		}
		else {
			currentY = targetY;
			currentAngle = targetAngle;
		}


        setCameraPosition (currentY, currentAngle);

	}


	private void setCameraPosition(float y, float angle){
        //if (angle > maxAngle) angle = maxAngle;
        //if (angle < minAngle) angle = minAngle;

        float mDist = distance;//プレイヤーとカメラの間に物体があった時はmDistが小さくなる
        
		//Debug.Log (mDist);
		cameraOffset = new Vector3(0, 0, -mDist);
		cameraOffset = Quaternion.Euler(angle, y, 0) * cameraOffset;

        Transform lookAtTransform = LookAt.GetComponent<Transform>();

		int layerMask = ~((1 << 8) | (1 << 9) | (1 << 14) | (1 << 16));//PlayerとBoltとEnemyとGroundを除くすべて

        RaycastHit hit;
		if (Physics.Raycast(lookAtTransform.position, cameraOffset,out hit, distance,layerMask))
        {
            mDist = Vector3.Distance(lookAtTransform.position, hit.point);
        }

        cameraOffset *= mDist;

		cameraTransform.position = lookAtTransform.position + cameraOffset;

        //カメラはLookAtに指定したオブジェクトよりちょっと上を向く
		cameraTransform.LookAt(LookAt.GetComponent<Transform>().position);
		cameraTransform.RotateAround (cameraTransform.position, cameraTransform.right, -cameraVerticalAngleOffset);
	}

	public void StartLockOn(GameObject target){
		isLockOn = true;
		lockOnTarget = target;
	}
	public void SwitchTarget(GameObject target){
		lockOnTarget = target;
	}
	public void StopLockOn(){
		isLockOn = false;
	}

    /// <summary>
    /// とある方向をカメラが向くためのYとAngleの値を算出します。
    /// </summary>
    /// <param name="go">対象のGameObject</param>
    /// <returns>XがAngle、YがY。</returns>
	private Vector2 CaliculateTargetRotation(GameObject go){
		return CaliculateTargetRotation (go.transform.position);
	}

	private Vector2 CaliculateTargetRotation(Vector3 target){
		Quaternion qu =  Quaternion.LookRotation (target - LookAt.transform.position);
        float y = qu.eulerAngles.y;
        //Debug.Log(qu.eulerAngles);
        //qu *= Quaternion.Euler(0, -y, 0);
        //qu *= Quaternion.Euler(0, 0, -qu.eulerAngles.z);
        //Debug.Log(qu.eulerAngles);
        float x = qu.eulerAngles.x;//getAngleWithSign(new Vector3(0, 0, 1), qu.eulerAngles);//qu.eulerAngles.x;
        return new Vector2(x, y);
	}

    /// <summary>
    /// 与えられた値が角度であることを考慮し-180から180の範囲で収まるようにしてからClampします
    /// </summary>
    /// <param name="angle"></param>
    /// <param name="minAngle"></param>
    /// <param name="maxAngle"></param>
    private float ClampAngle(float angle,float minAngle,float maxAngle)
    {
        while (-180 > angle) angle += 360;
        while (angle > 180) angle -= 360;
        return Mathf.Clamp(angle, minAngle, maxAngle);
    }

    static float getAngleWithSign(Vector3 v1, Vector3 v2)
    {
        float angle = Vector3.Angle(v1, v2);
        int sign = Vector3.Cross(v1, v2).z < 0 ? -1 : 1;
        return angle * sign;
    }

}