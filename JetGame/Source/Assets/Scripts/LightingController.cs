using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LightingController : MonoBehaviour
{
    public GameObject directional_light, point_light, spot_light;
    public Transform aircraft;

    private Color ambient_color;

    void Start()
    {
        ambient_color = Color.black;
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.A))
        {
            ToggleAmbientColor();
        }
        if (Input.GetKeyDown(KeyCode.D))
        {
            ToggleLightSource(directional_light);
        }
        if (Input.GetKeyDown(KeyCode.P))
        {
            ToggleLightSource(point_light);
        }
        if (Input.GetKeyDown(KeyCode.S))
        {
            ToggleLightSource(spot_light);
        }

        UpdateSpotLightRotation();
    }

    void ToggleLightSource(GameObject light_source)
    {
        light_source.SetActive(!light_source.activeSelf);
    }

    void ToggleAmbientColor()
    {
        // Toggle between red and black ambient lighting
        if (ambient_color == Color.black)
        {
            ambient_color = Color.red;
        }
        else
        {
            ambient_color = Color.black;
        }
        RenderSettings.ambientSkyColor = ambient_color;
    }

    void UpdateSpotLightRotation()
    {
        transform.LookAt(aircraft);
    }
}
