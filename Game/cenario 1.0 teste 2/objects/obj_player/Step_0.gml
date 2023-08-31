//sistema de controle do player
var _chao = place_meeting(x,y +1, obj_plat) || place_meeting(x,y+1, obj_escada);



var _left, _right, _jump,_shoot;
_left = keyboard_check(inputs.left);
_right = keyboard_check(inputs.right);
_jump = keyboard_check_pressed(inputs.jump);
_shoot = keyboard_check(inputs.shoot);

var _shooting = false;

velh = (_right - _left) * vel;


//aplicar a gravidade
velv += grav;

//pulando
if(_chao){
	if (_shoot && shoot_timer <= 0 && !obj_tiro.ativo) {
	
    obj_tiro.ativo = true; // Ativa a instância do tiro
    obj_tiro.x = x; // Define a posição do tiro como a mesma do jogador
    obj_tiro.y = y;
	obj_tiro.direcao = image_xscale
	
    shoot_timer = shoot_delay;
	
}

shoot_timer--;

// Verificar se o jogador não está mais atirando
if (!_shooting && !keyboard_check(inputs.shoot)) {
    _shooting = false;
	
}

// Alterar o sprite se o jogador estiver atirando
if (_shooting)
{
	

	//se estou atirando e me movendo
	if (obj_tiro.ativo = true) 
	{
		//Mudar sprite
		sprite_index = spr_player_shoot
		image_xscale =sign(velh);
	}
	else
	{
		sprite_index = spr_player_idle
	}

}
if (_jump)
{
	velv = -vel_jump;
}
	//se estou chao e me movendo
	if (velh != 0) 
	{
		//Mudar sprite
		sprite_index = spr_player_run
		image_xscale =sign(velh);
	}
	else
	{
		if (obj_tiro.ativo = false){
		sprite_index = spr_player_idle
		
		}
		else {
			sprite_index = spr_player_shoot
		}
		
	}

}
else // Quando eu nao estiver no chao
{
	sprite_index = spr_player_jump
//aplicar a gravidade
velv += grav;
if (velh != 0)
{
	image_xscale = sign(velh)
}



}



