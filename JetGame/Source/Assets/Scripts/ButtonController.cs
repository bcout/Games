using UnityEngine;
using UnityEngine.UI;

public class ButtonController : MonoBehaviour
{
    public Button restart_button, continue_button, quit_button;

    private GameController gc;

    void Start()
    {
        gc = GetComponent<GameController>();
        restart_button.onClick.AddListener(gc.RestartGame);
        continue_button.onClick.AddListener(gc.NextLevel);
        quit_button.onClick.AddListener(gc.QuitGame);
    }

    public void HideAllButtons()
    {
        restart_button.gameObject.SetActive(false);
        continue_button.gameObject.SetActive(false);
        quit_button.gameObject.SetActive(false);
    }

    public void ShowGameEndButtons(bool game_won)
    {
        if (game_won)
            continue_button.gameObject.SetActive(true);
        else
            quit_button.gameObject.SetActive(true);
        restart_button.gameObject.SetActive(true);
    }
}
