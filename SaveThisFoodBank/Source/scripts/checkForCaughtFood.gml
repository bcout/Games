///checkForCaughtFood()
//monitor the basket to see if the player caught any food

var caught_food_item = false;
with(objBasket){
    if(place_meeting(x, y, objFoodItem)){
        var food_item_id = instance_place(x, y, objFoodItem);
        caught_food_item = true;
    }
}

if(caught_food_item){
    incrementCombo();
    with(food_item_id){
        var _sprite = sprite_index;
    }
    instance_destroy(food_item_id);
    
    switch(sprite_index){
        case sprApple:
            with(objFoodController){
                num_apples_caught++;
            }
            with(objGameController){
                total_apples_caught++;
            }
        case sprBanana:
        case sprOrange:
        case sprHamburger:
            break;
    }
}
