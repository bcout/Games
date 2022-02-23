///initRoomOffice()
//called in roomOffice's creation code

///initRoomOffice()

//set background based on time of day
var time = getTimeOfDay();

switch(time){
    case 0:
        //day
        background_index = bkgOfficeDay;
        break;
    case 1:
        //evening
        background_index = bkgOfficeEvening;
        break;
    case 2:
        //night
        background_index = bkgOfficeNight;
        break;
}

if(getState() == 0){
    //player has entered office for the first time, show opening cutscene
    
    //random x,y, don't worry about it
    instance_create(100, 100, objIntroSequenceController);
    
}else if(getState() == 7){
    instance_create(100, 100, objOutroSequenceController);
}else{
    instance_create(100, 100, objDialogueController);
    
    var previous_room = getPreviousRoom();
    var doors = getAllDoors();
    
    /*
        roomOffice has two doors, and we want to start player on one based on previous room
    */
    
    var left_door = doors[0];
    var right_door = doors[1];
    
    if(left_door.x > right_door.x){
        var temp = left_door;
        left_door = right_door;
        right_door = temp;
    }
    
    if(previous_room == roomCollectionArea){
        with(right_door){
            instance_create(x,y,objPlayer);
            setPlayerSpriteIndex(sprPlayerIdleLeft);
        }
    }else if(previous_room == roomStreet){
        with(left_door){
            instance_create(x,y,objPlayer);
            setPlayerSpriteIndex(sprPlayerIdleRight);
        }
    }
}




