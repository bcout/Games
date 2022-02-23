///initRoomStreet

setTimeOfDay(0);
setOkToMove(true);
setOkToPause(true);
with(objDoor){
    setDoorOpen(id, true);
}

var player_spawn_x = 1952;
var player_spawn_y = 416;
instance_create(player_spawn_x, player_spawn_y, objPlayer);
setPlayerSpriteIndex(sprPlayerIdleLeft);
spawnLocals();

if(getState() == 0){
    //show move instructions billboard
    if(instance_number(objInstructionsBillboard) == 0){
        instance_create(1720, 224, objInstructionsBillboard);
    }
}

//Show newspaper to progress story
if(instance_number(objTransitionController) == 0){
    instance_create(100, 100, objTransitionController);   
}
