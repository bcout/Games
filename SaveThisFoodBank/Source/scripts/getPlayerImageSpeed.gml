///getPlayerImageSpeed()
//returns the string representation of the image speed ("idle" or "walking")

with(objPlayer){
    if(image_speed == PLAYER_WALKING_IMAGE_SPEED){
        return "walking";
    }else if(image_speed == PLAYER_IDLE_IMAGE_SPEED){
        return "idle";
    }
}
