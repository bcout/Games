///getCooldownTime()

with(objFoodController){
    var state = getState();
    var lower_bound = cooldown_time;
    var upper_bound = cooldown_time;
    switch(state){
        case 1: 
            lower_bound = room_speed * 1.5;
            upper_bound = room_speed * 2;
            break;
        case 3:
            lower_bound = room_speed * 0.5;
            break;
        case 5:
            lower_bound = room_speed * 0.3;
            break;
        case 7:
            lower_bound = room_speed * 0.3;
            break;
    }
    return irandom_range(lower_bound, upper_bound);
}
