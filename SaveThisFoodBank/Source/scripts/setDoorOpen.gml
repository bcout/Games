///setDoorOpen(door_id, boolean)

var door_id = argument0;
var open = argument1;

with(door_id){
    if(open){
        image_index = 0; //open
    }else{
        image_index = 1; //closed
    }
}
