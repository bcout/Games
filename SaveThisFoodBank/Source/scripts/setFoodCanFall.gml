///setFoodCanFall(boolean)

with(objFoodController){
    food_can_fall = argument0;
}

if(!argument0){
    //stop all currently generated food items
    with(objFoodItem){
        speed = 0;
    }
}else{
    with(objFoodItem){
        //if food was falling before pause, resume falling
        if(!place_meeting(x, y, objGround)){
            speed = getFoodItemFallingSpeed();
        }else{
            //if food was on ground, it will have missed its chance to despawn, so reset its collision_handled value
            collision_handled = false;
        }
    }
}
