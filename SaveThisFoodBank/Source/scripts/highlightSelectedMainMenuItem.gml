///highlightSelectedMainMenuItem();

var index = getSelectedMainMenuItemIndex();
switch(index){
    case 0:
        //start is selected
        with(objStart){
            image_index = 1;
        }
        with(objCredits){
            image_index = 0;
        }
        with(objQuit){
            image_index = 0;
        }
        break;
    case 1:
        //credits is selected
        with(objStart){
            image_index = 0;
        }
        with(objCredits){
            image_index = 1;
        }
        with(objQuit){
            image_index = 0;
        }
        break;
    case 2:
        //quit is selected
        with(objStart){
            image_index = 0;
        }
        with(objCredits){
            image_index = 0;
        }
        with(objQuit){
            image_index = 1;
        }
}
