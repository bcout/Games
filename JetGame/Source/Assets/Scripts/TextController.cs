using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class TextController : MonoBehaviour
{
    public TextMeshProUGUI timer_text, game_end_text;

    public void SetTimerText(float time_left)
    {
        timer_text.text = time_left.ToString("00.00");
    }

    public void SetGameEndTextVisible(bool status)
    {
        game_end_text.gameObject.SetActive(status);
    }

    public void SetGameEndText(string text)
    {
        game_end_text.text = text;
    }
}
