///checkForMainMenuInput()
//called by checkForInput() to limit the amount of code in that script

    
/*
    0: vk_up
    1: vk_down
*/

var main_menu_inputs = getMainMenuInputs();
var up_key_pressed = keyboard_check_pressed(main_menu_inputs[0]);
var up_key_held_down = keyboard_check(main_menu_inputs[0]);
var down_key_pressed = keyboard_check_pressed(main_menu_inputs[1]);
var down_key_held_down = keyboard_check(main_menu_inputs[1]);
var enter_key_pressed = keyboard_check_pressed(main_menu_inputs[2]);

/*
If the user is hitting more than one key, or no keys, do nothing
    also, menu items go
    0: start
    1: credits
    2: quit
*/
var change_requested = 0;
if(up_key_pressed && down_key_pressed){
    change_requested = 0;
}else if(up_key_held_down && down_key_pressed){
    change_requested = 0;
}else if(up_key_pressed && down_key_held_down){
    change_requested = 0;
}else if(up_key_pressed){
    change_requested = -1;
}else if(down_key_pressed){
    change_requested = 1;
}//else no keys pressed, do nothing as change_requested is already 0

if(change_requested != 0){
    setSelectedMainMenuItemIndex(getSelectedMainMenuItemIndex() + change_requested);
}

if(enter_key_pressed){
    switch(getSelectedMainMenuItemIndex()){
        case 0:
            //play
            setRoom(roomMainMenu, roomStreet);
            break;
        case 1:
            //credits
            setRoom(roomMainMenu, roomCredits);
            break;
        case 2:
            //quit
            game_end();
            break;
        default:
            break;
    }
}














