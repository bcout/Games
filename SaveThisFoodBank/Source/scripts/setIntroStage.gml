///setIntroStage(int)

with(objIntroSequenceController){
    var stage_in = argument0;
    if(stage_in > 0 && stage_in < getNumIntroStages()){
        intro_stage = stage_in;
    }
}
