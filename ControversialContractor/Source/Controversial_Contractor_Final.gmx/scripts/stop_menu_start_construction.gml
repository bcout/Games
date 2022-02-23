///stop_menu_start_construction()

/*
if(audio_is_playing(snd_menu_start)){
    audio_stop_sound(snd_menu_start);
}
if(audio_is_playing(snd_menu_loop)){
    audio_stop_sound(snd_menu_loop);
}
*/


audio_stop_all();
audio_play_sound(snd_background_construction, 0, true);
/*
if(audio_is_playing(snd_menu_loop)){
    audio_stop_sound(snd_menu_loop);
}else if(audio_is_playing(snd_menu_start)){
    audio_stop_sound(snd_menu_start);
}


if(!audio_is_playing(snd_background_construction)){
    audio_play_sound(snd_background_construction, 0, true);
}
*/

