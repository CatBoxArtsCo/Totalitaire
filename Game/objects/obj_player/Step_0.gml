//sistema de controle do player
var _chao = place_meeting(x,y +1, obj_plat) || place_meeting(x,y+1, obj_escada);




var _left, _right, _jump;
_left = keyboard_check(inputs.left);
_right = keyboard_check(inputs.right);
_jump = keyboard_check_pressed(inputs.jump);

velh = (_right - _left) * vel;


//aplicar a gravidade
velv += grav;

//pulando
if(_chao){
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
		sprite_index = spr_player_idle
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