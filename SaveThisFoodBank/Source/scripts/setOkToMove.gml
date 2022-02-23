///setOkToMove(boolean)
//argument0: A boolean value for whether the player can move or not

with(objGameController){
    
    if(!argument0){
        /*
            If player is moving and this value is set to false,
            player will stop traversing the room, but the animation
            continues as if they were walking. So, we have to check for that
            here. 
        */
        
        //This is a hacky fix to make the end-of-day cutscene work
        //Added one day before the due date. I can't be bothered to think of a legit solution
        if(instance_number(objTimeOfDayController) == 0){
            setPlayerAnimationIdle();
        }
    }
    ok_to_move = argument0;
}
