///setRoom(previous_room, new_room)
//sets previous_room, goes to new_room

setPreviousRoom(argument0);
setPlayerMoveSpeed(PLAYER_MOVE_SPEED_BASE);
//show_debug_message("going to " + string(room_get_name(argument1)) + " from " + string(room_get_name(argument0)));
room_goto(argument1);

