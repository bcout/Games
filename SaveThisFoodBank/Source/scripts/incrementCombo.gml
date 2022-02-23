///incrementCombo()

with(objGameController){
    combo_val++;
    var combo = combo_val;
}

//Increase player speed if they get certain combo milestones
var step = 0;
if(combo % getComboValNeeded() == 0){
    //if player catches a multiple of 5 food items, increase speed by 10
    //resets to 0 if player misses just one, though.
    step = 10;
}

if(getPlayerMoveSpeed() < PLAYER_MOVE_SPEED_BASE + 200){
    setPlayerMoveSpeed(getPlayerMoveSpeed() + step);
}

