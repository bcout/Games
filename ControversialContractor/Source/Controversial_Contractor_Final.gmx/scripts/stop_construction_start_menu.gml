///stop_construction_start_menu()

/*
if(instance_number(obj_menu_music_controller) == 0){
    instance_create(0, 0, obj_menu_music_controller);
}else{
    if(!audio_is_playing(snd_menu_loop)){
        audio_play_sound(snd_menu_loop, 0, true);
    }
}

if(audio_is_playing(snd_background_construction)){
    audio_stop_sound(snd_background_construction);
}
*/

audio_stop_all();
audio_play_sound(snd_menu_loop, 0, true);
