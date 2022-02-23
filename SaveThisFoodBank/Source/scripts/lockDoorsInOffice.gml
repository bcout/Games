///lockDoorsInOffice

var doors = getAllDoors();
for(var i = 0; i < array_length_1d(doors); i++){
    setDoorOpen(doors[i], false);
}
