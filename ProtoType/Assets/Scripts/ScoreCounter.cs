using UnityEngine;
using System.Collections;

public static class ScoreCounter {
    private static int launchedBolt = 0;
    public static int LaunchedBoltCount
    {
        get
        {
            return launchedBolt;
        }
    }

    private static int beatedEnemy = 0;
    public static int BeatedEnemyCount
    {
        get
        {
            return beatedEnemy;
        }
    }

    private static float timeStarted = 0;
    public static float TimeSinceStarted
    {
        get
        {
            return Time.realtimeSinceStartup - timeStarted;
        }
    }

    //MapLoaderより参照
    public static void GameStarted()
    {
        launchedBolt = 0;
        beatedEnemy = 0;
        timeStarted = Time.realtimeSinceStartup;
    }

    //BoltScriptより参照
    public static void BoltLaunched()
    {
        launchedBolt++;
    }

    //EnemyNormalより参照
    public static void EnemyBeated()
    {
        beatedEnemy++;
    }

}
