///catchFoodItem(id)

var _id = argument0;
with(_id){
    var sprite = sprite_index;
}
instance_destroy(_id);

/*
    We're introducing the combo system on the second day.
*/
var state = getState();
if(state > 1){
    if(state == 5){
        //hamburgers don't increase combo anymore, they reset it
        if(sprite == sprHamburger){
            resetCombo();
        }else{
            incrementCombo();
        }
    }else{
        incrementCombo();
    }
}

switch(sprite){
    case sprApple:
        with(objGameController){
            total_apples_caught++;
            current_apples_caught++;
        }
        break;
    case sprBanana:
        with(objGameController){
            total_bananas_caught++;
            current_bananas_caught++;
        }
        break;
    case sprOrange:
        with(objGameController){
            total_oranges_caught++;
            current_oranges_caught++;
        }
        break;
    case sprHamburger:
        with(objGameController){
            total_hamburgers_caught++;
            current_hamburgers_caught++;
        }
        break;
}
