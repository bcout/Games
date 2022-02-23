///movePlayer(move_xinput)
var move_xinput = argument0;
    
//Move the player
var move_speed_this_frame = getPlayerMoveSpeed() * getSecondsPassed();
var move_dir = point_direction(0, 0, move_xinput, 0);
       
with(objPlayer){
    var xtarg = x + lengthdir_x(move_speed_this_frame, move_dir);
    
    with(objBasket){
        var offset = 56; //basket is 56 px ahead of player
        if(place_free(xtarg + offset, y)){
            x = xtarg + offset;
        }
    }
    
    if(place_free(xtarg, y)){
        x = xtarg;
    }
}

