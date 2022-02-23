///setSelectedPauseMenuItemIndex(int)

var new_selection = argument0;

if(new_selection >= 0 && new_selection < getNumPauseMenuItems()){
    with(objUIController){
        selected_pause_menu_item_index = new_selection;
        highlightSelectedPauseMenuItem(selected_pause_menu_item_index);
    }
}
