///initRoomCollectionArea

setFoodCanFall(false);
setCanGenerateFood(false);
setOkToMove(true);
setOkToPause(true);
resetCurrentlyCaughtFood();
resetCombo();

//Show combo meter and quota when it is actually applicable (state > 1)
if(getState() > 1){
    background_index[0] = bkgCollectionAreaDayBillboard;
}else{
    background_index[0] = bkgCollectionAreaDay;
}

background_alpha[1] = 0;
background_alpha[2] = 0;

instance_create(100, 100, objFoodControllerCreator);

//Show tutorial
switch(getState()){
    case 1:
    case 3:
    case 5:
        showTutorial(objTutorial);
        break;
    default:
        spawnPlayerCollectionArea();
        break;
}

//Create timeOfDayController
if(getState() > 1){
    instance_create(110, 110, objTimeOfDayController);
}


