using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameController : MonoBehaviour
{
    public GameObject aircraft;
    public GameObject obstacle_parent;

    private List<Transform> obstacles;
    private bool timer_started = false;
    private bool game_done = false;
    private float start_time;
    private float time_elapsed;

    private TextController tc;
    private ButtonController bc;

    void Start()
    {
        start_time = 0;
        time_elapsed = 0;

        tc = GetComponent<TextController>();
        tc.SetTimerText((GameData.time_limit - time_elapsed));
        tc.SetGameEndTextVisible(false);

        bc = GetComponent<ButtonController>();
        bc.HideAllButtons();
        
        GetAllObstacles();
    }

    void Update()
    {
        if (!timer_started && (Input.GetKeyDown(KeyCode.UpArrow) || Input.GetKey(KeyCode.RightArrow) || Input.GetKey(KeyCode.LeftArrow)))
        {
            timer_started = true;
            start_time = (int)Time.timeSinceLevelLoad;
        }

        UpdateTimer();
    }

    void GetAllObstacles()
    {
        obstacles = new List<Transform>();
        for(int i = 0; i < obstacle_parent.transform.childCount; i++)
        {
            obstacles.Add(obstacle_parent.transform.GetChild(i));
            obstacles[i].gameObject.SetActive(true);
        }
    }

    void DestroyObstacle(Transform obstacle)
    {
        obstacles.Remove(obstacle);
        obstacle.gameObject.SetActive(false);
    }

    void RemoveAllObstacles()
    {
        foreach (Transform obstacle in obstacles.ToArray())
        {
            DestroyObstacle(obstacle);
        }
    }

    public void Score(Transform obstacle)
    {
        if (obstacles.Contains(obstacle))
        {
            DestroyObstacle(obstacle);
        }

        if (obstacles.Count == 0)
        {
            // True meaning the player won
            EndGame(true);
        }
    }

    void UpdateTimer()
    {
        if (!game_done && timer_started)
        {
            time_elapsed = Time.timeSinceLevelLoad - start_time;

            float time_left = GameData.time_limit - time_elapsed;
            if (time_left <= 0)
            {
                time_left = 0.0f;
                EndGame(false);
            }

            tc.SetTimerText(time_left);
        }
    }

    void EndGame(bool game_won)
    {
        game_done = true;

        tc.SetGameEndText(game_won ? "Level Cleared!" : "You lose!");
        tc.SetGameEndTextVisible(true);

        bc.ShowGameEndButtons(game_won);

        RemoveAllObstacles();
        aircraft.SendMessage("Stop");
    }

    public void RestartGame()
    {
        GameData.time_limit = GameData.original_time_limit;
        GameData.movement_speed = GameData.original_movement_speed;
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
    }

    public void QuitGame()
    {
        Application.Quit();
    }

    public void NextLevel()
    {
        GameData.DecreaseTimeLimit(time_elapsed);
        GameData.IncreaseMovementSpeed();
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
    }
}
