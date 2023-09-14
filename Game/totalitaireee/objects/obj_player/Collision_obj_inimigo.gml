if alarm[0] <= 0 && global.life > 0{
	global.life -= 1;
	sprite_index = spr_player_dano
	 //2 segundos sem levar dano
	 
	 alarm[0] = 90;
}

if (global.life == 0){
	alarm[0] = 30;
	sprite_index = spr_player_morte
	sprite = spr_player_morte
}

audio_play_sound(sound_dano, 1, false)