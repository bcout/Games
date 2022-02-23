///checkForInput()

/*
    ******************
    check for movement
    ******************
*/
checkForMovementInput();

/*
    ********************************************************
    check if player has clicked the toggle pause menu button
    ********************************************************
*/

if(getOkToPause()){
    var open_pause_key = getOpenPauseKey();
    if(keyboard_check_pressed(open_pause_key)){
        if(instance_number(objConfirmQuit) > 0){
            //Pause menu is open, close it
            instance_destroy(objConfirmQuit);
        }
        setPauseMenuOpen(!getPauseMenuOpen());
        
        if(room == roomCollectionArea){
            setCanGenerateFood(!getCanGenerateFood());
            setFoodCanFall(!getFoodCanFall());
        }
        
    }
}

/*
    *************************************
    check for pause menu navigation input
    *************************************
*/
if(getPauseMenuOpen()){
    checkForPauseMenuInput();
}

/*
    ************************************
    check for main menu navigation input
    ************************************
*/
if(room == roomMainMenu){
    checkForMainMenuInput();
}

/*
    ****************************
    check if player is on a door
    ****************************
*/
var on_door = false;
with(objPlayer){
    if(place_meeting(x, y, objDoor)){
        var door_id = instance_place(x, y, objDoor);
        on_door = true;
    }else if (instance_number(objUpArrow) > 0){
        //show_debug_message("Destroying all prompts");
        instance_destroy(objUpArrow);
    }
}

/*
    ************************************************
    check if player is attempting to go through door
    ************************************************
*/
if(on_door){
    checkForDoorInput(door_id);
}










