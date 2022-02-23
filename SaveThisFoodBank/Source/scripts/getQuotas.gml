///getQuotas(state)
//returns an array holding the values needed for each food item
//[apples, bananas, oranges, hamburgers]

var state = argument0;

//show_debug_message(string(state));
with(objGameController){
    switch(state){
        case 1:
            quota[0] = 0;
            quota[1] = 0;
            quota[2] = 0;
            quota[3] = 0;
            return quota;
        case 3:
            quota[0] = first_quota_apples;
            quota[1] = first_quota_bananas;
            quota[2] = first_quota_oranges;
            quota[3] = first_quota_hamburgers;
            return quota;
            break;
        case 5:
            quota[0] = second_quota_apples;
            quota[1] = second_quota_bananas;
            quota[2] = second_quota_oranges;
            quota[3] = second_quota_hamburgers;
            return quota;
            break;
        case 7:
            quota[0] = last_quota_apples;
            quota[1] = last_quota_bananas;
            quota[2] = last_quota_oranges;
            quota[3] = last_quota_hamburgers;
            return quota;
            break;
    }
}

