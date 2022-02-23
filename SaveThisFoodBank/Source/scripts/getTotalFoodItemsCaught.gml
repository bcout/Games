///getTotalFoodItemsCaught()
//returns an array with the numbers of total food items collected
//[total apples, total bananas, total oranges, total hamburgers]

with(objGameController){
    totals[0] = total_apples_caught;
    totals[1] = total_bananas_caught;
    totals[2] = total_oranges_caught;
    totals[3] = total_hamburgers_caught;
    return totals;
}
