///setState(int)
//given an integer 0 to num_states, set the state accordingly
//returns -1 if input is invalid and does not set objGameController's value. returns 0 if successful

var num_states = getNumStates();
var input = argument0;

if(input >= num_states || input < 0){
    //bad input
    return -1;
}else{
    //good input
    with(objGameController){
        state = input;
    }
    return 0;
}
