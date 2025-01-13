/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case rm_start:
			room_goto(rm_game);
			break;
			
		case rm_win:
		case rm_gameover:
			game_restart();
			break;
			
	}
}
if(room == rm_game){
	if(score >= 100){
		room_goto(rm_win);
		audio_play_sound(snd_winnin ,1, false);
		audio_stop_sound(snd_bg_song);
	}

	if(lives <= 0){
		room_goto(rm_gameover);
		audio_play_sound(snd_losing, 1, false);
		audio_stop_sound(snd_bg_song);
	}
}