///getDoorOpen(door_id)
//returns true if door_id's sprite is the "open" sprite, false otherwise.

var door_id = argument0;

with(door_id){
    if(image_index == 0){
        return true; //open
    }else{
        return false; //closed
    }
}
