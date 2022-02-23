///getAllDoors()
//returns an array of all the door instances

var doors;
for(var i = 0; i < instance_number(objDoor); i++){
    doors[i] = instance_find(objDoor, i);
}
return doors;
