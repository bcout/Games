///setPauseMenuOpen(boolean)

with(objUIController){
    pause_menu_open = argument0;
}

setOkToMove(!argument0);

if(argument0){
    if(instance_number(objConfirmQuit) == 0){
        instance_create(x, y, objConfirmQuit);
    }
}
