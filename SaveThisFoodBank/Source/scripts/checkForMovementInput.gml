///checkForMovementInput()
//called by checkForInput() to limit the amount of code in that script

var move_xinput = 0;
var moving = 0;

//check if a key is being held down
var movement_inputs = getMovementInputs();
for(var i = 0; i < array_length_1d(movement_inputs); i++){
    var this_key = movement_inputs[i];
    if(keyboard_check(this_key)){
        //Even indices are right movement, odd are left movement
        //i mod 2 will determine whether index is 0 or 1 (even or odd)
        var this_angle = (i % 2) * 180; //either 1*180 or 0*180, so either left or right
        move_xinput += lengthdir_x(1, this_angle);
        var moving = (point_distance(0,0,move_xinput,0) > 0);
    }
}
    
var ok_to_move = getOkToMove();
if(ok_to_move){
    setPlayerDirectionSpriteInt(move_xinput);
    if(moving){
        movePlayer(move_xinput);
    }
    
}
