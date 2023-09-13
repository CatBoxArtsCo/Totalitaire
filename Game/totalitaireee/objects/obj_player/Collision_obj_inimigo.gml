if alarm[0] <= 0 && global.life > 0{
	global.life -= 1;
	sprite_index = spr_player_dano
	 //2 segundos sem levar dano
	 
	 alarm[0] = 90;
}

//i/f (global.life == 0){
	//game_restart()
//}