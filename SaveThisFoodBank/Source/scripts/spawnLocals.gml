///spawnLocals()
//generates a certain number of locals outside the food bank based on state

var num_people = 0;
switch(getState()){
    case 0:
        //just started
        num_people = 5;
        break;
    case 2:
        num_people = 20;
        break;
    case 4:
        num_people = 15;
        break;
    case 6:
        num_people = 100;
        break;
    default:
        //will never get here, but what the heck, let's assign variable anyway
        num_people = 0;
        break;
}

var x_person_offset = 160; //Generate a person at x = 160 + (i*32)
var y_person = 388; //Generate people at this y coordinate
for(var i = 0; i < num_people; i++){
    var x_person = x_person_offset + (i * 40);
    instance_create(x_person, y_person, objLocalNPC);
}

