///getNumCurrentlyCaughtFood
//returns an array of the numbers of each food item that has been caught this day

with(objGameController){
    caught[0] = current_apples_caught;
    caught[1] = current_bananas_caught;
    caught[2] = current_oranges_caught;
    caught[3] = current_hamburgers_caught;
    return caught;
}
