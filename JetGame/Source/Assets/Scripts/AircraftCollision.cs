using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AircraftCollision : MonoBehaviour
{

    [SerializeField]
    private GameController gc;
    private AircraftController aircraft_controller;
    private bool touching = false;
    private bool in_gap = false;

    private void Start()
    {
        aircraft_controller = transform.parent.GetComponent<AircraftController>();
    }

    private void Update()
    {
        aircraft_controller.SetMovementLock(touching);
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Obstacle")
        {
            touching = true;
        }
        if (other.gameObject.tag == "Gap")
        {
            in_gap = true;
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.gameObject.tag == "Obstacle")
        {
            touching = false;
        }
        if (other.gameObject.tag == "Gap" && in_gap)
        {
            in_gap = false;
            Transform obstacle = other.gameObject.transform.parent.gameObject.transform;
            gc.Score(obstacle);
        }
    }
}
