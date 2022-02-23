///setPlayerDirectionSprite(int)
//Given move_xinput, set sprite accordingly. 

/*
    We don't want to keep setting the player's sprite values if they're already set, so this 
        makes checks to see if the values are already good before setting them
*/

var move_xinput = argument0;
var player_image_speed = getPlayerImageSpeed();
var player_sprite_index = getPlayerSpriteIndex();

if(move_xinput > 0){
    //right movement

    if(room == roomCollectionArea){
        //player is using cart, not just walking
        
        if(player_sprite_index != sprPlayerCartRight){
            setPlayerSpriteIndex(sprPlayerCartRight);
        }
    }else{
        if(player_sprite_index != sprPlayerWalkRight){
            setPlayerSpriteIndex(sprPlayerWalkRight);
        }
    }
    
    if(player_image_speed != "walking"){
        setPlayerImageSpeed("walking");
    }

}else if(move_xinput < 0){
    //left movement
    
    if(room == roomCollectionArea){
        //player is using cart, not just walking
        
        if(player_sprite_index != sprPlayerCartLeft){
            setPlayerSpriteIndex(sprPlayerCartLeft);
        }
    }else{
        if(player_sprite_index != sprPlayerWalkLeft){
            setPlayerSpriteIndex(sprPlayerWalkLeft);
        }
    }
    
    if(player_image_speed != "walking"){
        setPlayerImageSpeed("walking");
    }

}else{

    //no movement
    if(room == roomCollectionArea){
        //player is using cart, not just walking
        
        if(player_sprite_index == sprPlayerCartLeft){
            setPlayerSpriteIndex(sprPlayerCartIdleLeft);
        }else if(player_sprite_index == sprPlayerCartRight){
            setPlayerSpriteIndex(sprPlayerCartIdleRight);
        }
        
    }else{
        if(player_sprite_index == sprPlayerWalkLeft){
            setPlayerSpriteIndex(sprPlayerIdleLeft);
        }else if(player_sprite_index == sprPlayerWalkRight){
            setPlayerSpriteIndex(sprPlayerIdleRight);
        }
    }
    
    
    
    if(player_image_speed != "idle"){
        setPlayerImageSpeed("idle");
    }

}

