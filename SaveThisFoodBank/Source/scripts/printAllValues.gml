///printAllValues()
//prints out all the object's data for debugging


var state = getState();
var ok_to_move = getOkToMove();
var ok_to_pause = getOkToPause();
var selected_main_menu_item_index = getSelectedMainMenuItemIndex();
var pause_menu_open = getPauseMenuOpen();
var selected_pause_menu_item_index = getSelectedPauseMenuItemIndex();
var previous_room = getPreviousRoom();
var combo = getCombo();
var can_generate_food = getCanGenerateFood();
var food_can_fall = getFoodCanFall();
var player_move_speed = getPlayerMoveSpeed();
var total_caught = getTotalFoodItemsCaught();
var current_caught = getNumCurrentlyCaughtFood();
var met_first = getMetFirstQuota();
var met_second = getMetSecondQuota();
var met_last = getMetLastQuota();
var sprite = -1;
with(objPlayer){
    sprite = sprite_index;
}

draw_set_font(fntDebugging);
draw_set_color(c_white);
draw_set_halign(fa_right);

draw_text(view_wview[0] - 10, 100, "state: " + string(state) + "#"
                    + "ok to move: " + string(ok_to_move) + "#"
                    + "ok to pause: " + string(ok_to_pause) + "#"
                    + "selected main menu index: " + string(selected_main_menu_item_index) + "#"
                    + "pause menu open: " + string(pause_menu_open) + "#"
                    + "selected pause menu item: " + string(selected_pause_menu_item_index) + "#"
                    + "previous room: " + string(room_get_name(previous_room)) + "#"
                    + "combo: " + string(combo) + "#"
                    + "can generate food: " + string(can_generate_food) + "#" 
                    + "food can fall: " + string(food_can_fall) + "#"
                    + "player move speed: " + string(player_move_speed) + "#"
                    + "totals| apples : bananas : oranges : hamburgers | " + string(total_caught[0]) + " : " 
                                                                            + string(total_caught[1]) + " : " 
                                                                            + string(total_caught[2]) + " : " 
                                                                            + string(total_caught[3])+ "#"
                    + "current| apples : bananas : oranges : hamburgers " + string(current_caught[0]) + " : " 
                                                                        + string(current_caught[1]) + " : " 
                                                                        + string(current_caught[2]) + " : " 
                                                                        + string(current_caught[3])+ "#"
                    + "quotas | first : second : last " + string(met_first) + " : " + string(met_second) + " : " + string(met_last) + "#");

