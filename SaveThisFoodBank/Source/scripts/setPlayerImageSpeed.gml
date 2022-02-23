///setPlayerImageSpeed(string)
//given "idle" or "walking" set image speed accordingly

var action = argument0;
with(objPlayer){
    switch(action){
        case "idle":
            image_speed = PLAYER_IDLE_IMAGE_SPEED;
            break;
        case "walking":
            image_speed = PLAYER_WALKING_IMAGE_SPEED;
            break;
        default:
            break;
    }
}

