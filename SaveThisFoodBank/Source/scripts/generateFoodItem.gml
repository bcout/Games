///generateFoodItem()

var random_sprite = choose(sprApple,
                            sprOrange,
                            sprBanana,
                            sprHamburger
                            );

var spawn_lower_bound = 228;
var spawn_upper_bound = 960;
var previous_x = getPreviousSpawnX();
if(previous_x == 0){
    var spawn_x = irandom_range(spawn_lower_bound, spawn_upper_bound);
}else{
    /*
        At base speed, player can travel ~425px before food hits ground. 
        If a new food item spawns further away than that, player won't be able to reach it.
        Player needs to have a chance to get each food item.
        But food should also be spaced apart so player has to move to get it. 
        New item should be at least 100px away from previous item, per social distancing guidelines.
    */
    
    /*
    var player_travel_distance = 425;
    var minimum_spacing = 50;
    var new_x = previous_x + irandom_range(player_travel_distance * -1, player_travel_distance); //between -425 and 425
    
    //check if new_x meets spacing requirements
    if(new_x > previous_x){
        if((new_x - previous_x) < minimum_spacing){
            //new_x is to the right of previous_x, but not enough, so add just enough x to put new_x minimum_spacing px away from previous_x
            new_x = new_x + (new_x - previous_x);
        }
    }else if(new_x < previous_x){
        if((previous_x - new_x) < minimum_spacing){
            //new_x is to the left of previous_x, but not enough, so subtract just enough x to put new_x minimum_spacing px away from previous_x
            new_x = new_x - (previous_x - new_x);
        }
    }else{
        //new_x == previous_x
        new_x = new_x + choose(minimum_spacing * -1, minimum_spacing);
    }
    
    //If new_x is out of bounds, bring it back into bounds
    if(new_x > spawn_upper_bound){
        new_x = spawn_upper_bound - irandom_range(minimum_spacing, player_travel_distance);
    }else if(new_x < spawn_lower_bound){
        new_x = spawn_lower_bound + irandom_range(minimum_spacing, player_travel_distance);
    }
    */
    
    //Spawn new food item within +/-300px of previous food item but at least 100px away from it
    var maximum_distance = 300;
    var minimum_distance = 100;
    var got_good_spawn = false;
    while(!got_good_spawn){
        var new_x_left = previous_x - irandom_range(minimum_distance, maximum_distance);
        var new_x_right = previous_x + irandom_range(minimum_distance, maximum_distance);
        var new_x = choose(new_x_left, new_x_right);
        if(new_x > spawn_lower_bound && new_x < spawn_upper_bound){
            got_good_spawn = true;
        }
    }
    //show_debug_message(string(new_x));
    spawn_x = new_x;
}
setPreviousSpawnX(spawn_x);

var spawn_y = -1; //spawn just outside the top of the room

var item = instance_create(spawn_x, spawn_y, objFoodItem);
with(item){
    sprite_index = random_sprite;
}
