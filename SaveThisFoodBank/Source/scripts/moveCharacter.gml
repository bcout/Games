///moveCharacter(move_xinput, object, x_destination)

///movePlayer(move_xinput)
var move_xinput = argument0;
var object = argument1;
var destination = argument2;
    
//Move the player
var move_speed_this_frame = CUTSCENE_MOVE_SPEED * getSecondsPassed();
var move_dir = point_direction(0, 0, move_xinput, 0);
       
with(object){
    var xtarg = x + lengthdir_x(move_speed_this_frame, move_dir);
    
    if(move_xinput > 0){
        if(xtarg < destination){
            x = xtarg;
        }else{
            setDoneMovingCharacters(true);
        }
    }else if(move_xinput < 0){
        if(xtarg > destination){
            x = xtarg;
        }else{
            setDoneMovingCharacters(true);
        }
    }
    
//show_debug_message(string(x));
}
