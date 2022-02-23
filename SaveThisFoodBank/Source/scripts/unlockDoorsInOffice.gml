///unlockDoorsInOffice()
//based on state and previous room, unlock all the doors that need to be unlocked to progress
var previous_room = getPreviousRoom();
var doors = getAllDoors();

/*
    roomOffice has two doors, and we want to toggle their locked status depending on
    which room player just came from
*/

var left_door = doors[0];
var right_door = doors[1];

if(left_door.x > right_door.x){
    var temp = left_door;
    left_door = right_door;
    right_door = temp;
}

if(previous_room == roomCollectionArea){
    setDoorOpen(right_door, false);
    setDoorOpen(left_door, true);
    
}else if(previous_room == roomStreet){
    setDoorOpen(right_door, true);
    setDoorOpen(left_door, false);
}
