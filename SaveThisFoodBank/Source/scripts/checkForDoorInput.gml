///checkForDoorInput(door_id)
//Player is on a door, see if they're trying to go through it. Given the id of the door the player is on, to check if it is open or not.

var go_through_door_key = getGoThroughDoorKey();
var key_pressed = keyboard_check_pressed(go_through_door_key);
var door_id = argument0;
var door_open = getDoorOpen(door_id);

if(door_open){
    if(instance_number(objUpArrow) == 0){
        with(door_id){
            //show prompt above door
            instance_create(x, y - 100, objUpArrow);
        }
    }
    
    
}

var pause_key_pressed = keyboard_check(getOpenPauseKey());
if(door_open && key_pressed && !pause_key_pressed){
    /*
        Depending on which room player is in, move to a new room
    */
    switch(room){
        case roomStreet:
            setRoom(roomStreet, roomOffice);
            break;
        case roomOffice:
            var previous_room = getPreviousRoom();
            if(previous_room == roomStreet){
                //increment state
                setState(getState() + 1);
                setRoom(roomOffice, roomCollectionArea);
            }else if(previous_room == roomCollectionArea){
                //increment state
                setState(getState() + 1);
                setRoom(roomOffice, roomStreet);
            }
            break;
        case roomCollectionArea:
            setRoom(roomCollectionArea, roomOffice);
            break;
        default:
            show_debug_message("There is no door here! How did you do this!?");
            break;
    }
}else if(!door_open && key_pressed){
    //show_debug_message("door is locked");
}
