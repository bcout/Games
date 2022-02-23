using UnityEngine;

public class QuitRestartController : MonoBehaviour
{
    private const KeyCode RESTART_KEY = KeyCode.R;
    private const KeyCode ESCAPE_KEY = KeyCode.Escape;

    private GameController gc;

    void Start()
    {
        gc = GetComponent<GameController>();
    }

    void Update()
    {
        if (Input.GetKeyDown(RESTART_KEY))
        {
            gc.RestartGame();
        }

        if (Input.GetKeyDown(ESCAPE_KEY))
        {
            gc.QuitGame();
        }
    }
}
