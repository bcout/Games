///getDialogueForState()
//Gets the dialogue for the current state
/*
    Dialogue for each day is stored in marked .txt files. 
        0.txt is for state 0, 1.txt is for state 1, etc.
        
        When we get to higher states, there will be multiple paths the dialogue can take.
            These divergent paths will be included in files named like this: (state)(variation).txt
            ex. 3a.txt, 3b.txt
*/

var state = getState();
var variation = "";
var metFirstQuota = getMetFirstQuota();
var metSecondQuota = getMetSecondQuota();
var metLastQuota = getMetLastQuota();

/*
    check if player met quotas / caught hamburgers 
    sets the variation of the file name based on these values
*/
switch(state){
    case 0:
        var intro_stage = getIntroStage();
        switch(intro_stage){
            case 0:
                variation = "a";
                break;
            case 1:
                variation = "b";
                break;
            case 2:
                variation = "c";
                break;
            default:
                break;
        }
        break;
    case 1:
    case 2:
        break;
    case 3:
    case 4:
        if(metFirstQuota){
            variation = "a";
        }else{
            variation = "b";
        }
        break;
    case 5:
        var currently_caught_food = getNumCurrentlyCaughtFood();
        var num_hamburgers_caught = currently_caught_food[3];
        if(metFirstQuota){
            if(metSecondQuota){
                if(num_hamburgers_caught == 0){
                    variation = "h";
                }else{
                    variation = "g";
                }
            }else{
                if(num_hamburgers_caught == 0){
                    variation = "f";
                }else{
                    variation = "e";
                }
            }
        }else{
            if(metSecondQuota){
                if(num_hamburgers_caught == 0){
                    variation = "d";
                }else{
                    variation = "c";
                }
            }else{
                if(num_hamburgers_caught == 0){
                    variation = "b";
                }else{
                    variation = "a";
                }
            }
        }
        break;
    case 6:
    case 7:
        if(metFirstQuota && metSecondQuota){
            variation = "a";
        }else{
            variation = "b";
        }
        break;
}

var filename = string(state) + string(variation) + ".txt";

//show_debug_message(string(filename));

var file = file_text_open_read(filename);
var line_index = 0;
if(file != -1){
    //file opened successfully
    while(!file_text_eof(file)){
        dialogue_lines[line_index] = file_text_readln(file);
        line_index++;
    }
    
    return dialogue_lines;
}
