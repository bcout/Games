///checkForPauseMenuInput()
//called by checkForInput() to limit the amount of code in that script


//If pause menu is opened, check for navigation
var pause_menu_inputs = getPauseMenuInputs();
var right_key_pressed = keyboard_check_pressed(pause_menu_inputs[0]);
var right_key_held_down = keyboard_check(pause_menu_inputs[0]);
var left_key_pressed = keyboard_check_pressed(pause_menu_inputs[1]);
var left_key_held_down = keyboard_check(pause_menu_inputs[1]);
var confirm_key_pressed = keyboard_check_pressed(pause_menu_inputs[2]);
/*
    pause menu looks like
    quit    cancel
    0       1
    with cancel being selected by default  
*/

var change_requested = 0;
if(right_key_pressed && left_key_pressed){
    change_requested = 0;
}else if(right_key_held_down && left_key_pressed){
    change_requested = 0;
}else if(right_key_pressed && left_key_held_down){
    change_requested = 0;
}else if(left_key_pressed){
    change_requested = -1;
}else if(right_key_pressed){
    change_requested = 1;
}//else no keys pressed, do nothing as change_requested is already 0

if(change_requested != 0){
    setSelectedPauseMenuItemIndex(getSelectedPauseMenuItemIndex() + change_requested);
}

if(confirm_key_pressed){
    var action = getSelectedPauseMenuItemIndex();
    if(action == 1){
        //cancel
        if(room == roomCollectionArea){
            setCanGenerateFood(!getCanGenerateFood());
            setFoodCanFall(!getFoodCanFall());
        }
        setPauseMenuOpen(false);
        instance_destroy(objConfirmQuit);
    }else if(action == 0){
        //quit
        setRoom(room, roomMainMenu);
        setPauseMenuOpen(false);
        instance_destroy(objConfirmQuit);
    }
    
    setSelectedPauseMenuItemIndex(1);
}



