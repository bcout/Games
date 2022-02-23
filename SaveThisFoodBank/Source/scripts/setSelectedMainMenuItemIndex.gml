///setSelectedMainMenuItemIndex(int)

var new_selection = argument0;

if(new_selection >= 0 && new_selection < getNumMainMenuItems()){
    //if desired menu index is between 0 and 2, assign it
    with(objUIController){
        selected_main_menu_item_index = new_selection;
        highlightSelectedMainMenuItem(selected_main_menu_item_index);
    }
}

