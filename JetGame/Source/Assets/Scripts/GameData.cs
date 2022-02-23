using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public static class GameData
{
    public static float original_time_limit = 15;
    public static float original_movement_speed = 0.5f;
    public static float time_limit { get; set; }
    public static float movement_speed { get; set; }

    static GameData()
    {
        time_limit = original_time_limit;
        movement_speed = original_movement_speed;
    }

    public static void DecreaseTimeLimit(float time_elapsed)
    {
        float time_left = time_limit - time_elapsed;
        time_limit = time_left + (3 / movement_speed);
    }

    public static void IncreaseMovementSpeed()
    {
        movement_speed += 0.2f;
    }
}
