///resetGameValues()

//this resets all the games values to their defaults

setState(0);
setOkToMove(0);
setOkToPause(0);
setPreviousRoom(roomMainMenu);
resetCombo();
setPlayerMoveSpeed(PLAYER_MOVE_SPEED_BASE);
setCanGenerateFood(0);
setFoodCanFall(0);
resetTotalCaughtFood();
resetCurrentlyCaughtFood();
setMetFirstQuota(false);
setMetSecondQuota(false);
setMetLastQuota(false);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
