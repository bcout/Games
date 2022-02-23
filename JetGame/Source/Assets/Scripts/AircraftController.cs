using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AircraftController : MonoBehaviour
{
    private const float MAX_ROTATION_SPEED = 100;
    private const float FINAL_ROTATION = 10;
    private const float CRUISE_SPEED = 0.1f;
    
    private float circle_radius;
    private float circle_speed;
    private float circle_angle;
    private float self_rotation_speed;
    private Vector3 last_direction;
    private Vector3 new_direction;
    private Vector3 new_position;
    private bool movement_lock;
    private bool game_done;

    // Start is called before the first frame update
    void Start()
    {
        circle_radius = 10;
        circle_speed = GameData.movement_speed;
        circle_angle = 0;
        self_rotation_speed = MAX_ROTATION_SPEED;

        last_direction = new Vector3(1, 0, 0);
        last_direction.Normalize();

        transform.position = new Vector3(10, 0, 0);
        transform.rotation = Quaternion.identity;

        movement_lock = false;
        game_done = false;

        
    }

    // Update is called once per frame
    void Update()
    {
        if (!game_done)
        {
            HandleInput();
            MoveAroundCircle();
            UpdateRoll();
            UpdatePosition();
        }
        else
        {
            MoveAroundCircle();
            UpdatePosition();
        }
    }

    void HandleInput()
    {
        if (!movement_lock && Input.GetKey(KeyCode.UpArrow))
        {
            circle_speed = GameData.movement_speed;
        }
        else
        {
            circle_speed = 0f;
        }


        if (Input.GetKey(KeyCode.LeftArrow))
        {
            self_rotation_speed = MAX_ROTATION_SPEED;
        }
        else if (Input.GetKey(KeyCode.RightArrow))
        {
            self_rotation_speed = -MAX_ROTATION_SPEED;
        }
        else
        {
            self_rotation_speed = 0;
        }
    }

    void MoveAroundCircle()
    {
        // Increment the angle at a constant rate
        circle_angle += circle_speed * Time.deltaTime;

        // Keep the angle under 360 degrees
        circle_angle = (circle_angle + 360) % 360;

        float new_position_x = circle_radius * (float)Mathf.Cos(circle_angle);
        float new_position_z = circle_radius * (float)Mathf.Sin(circle_angle);

        new_position = new Vector3(new_position_x, transform.position.y, new_position_z);
        new_direction = new_position - transform.position;

        new_direction.Normalize();

        float rotation_angle = -Vector3.Angle(last_direction, new_direction);

        // Rotate the plane as it moves around the circle
        transform.Rotate(Vector3.up, rotation_angle, Space.World);
    }

    void UpdateRoll()
    {
        transform.Rotate(Vector3.forward, self_rotation_speed * Time.deltaTime, Space.Self);
    }

    void UpdatePosition()
    {
        transform.position = new_position;
        last_direction = new_direction;
    }
   
    public void SetMovementLock(bool value)
    {
        movement_lock = value;
    }

    public bool GetMovementLock()
    {
        return movement_lock;
    }

    public void Stop()
    {
        game_done = true;
        circle_speed = CRUISE_SPEED;
        transform.rotation = Quaternion.Euler(transform.rotation.x, transform.rotation.y, FINAL_ROTATION);
    }
}
