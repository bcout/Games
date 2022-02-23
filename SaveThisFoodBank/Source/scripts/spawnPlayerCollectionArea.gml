///spawnPlayerCollectionArea

with(objDoor){
    //only one door, unlock it. Player can leave whenever
    setDoorOpen(id, true);
    var player_spawn_y = 416;
    instance_create(x,player_spawn_y,objPlayer);
    setPlayerSpriteIndex(sprPlayerCartRight);
}

//basket object will get positioned correctly in its create event
instance_create(x,y,objBasket);
