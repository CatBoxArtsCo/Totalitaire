//sistema de controle do player
var _chao = place_meeting(x,y +1, obj_plat) || place_meeting(x,y+1, obj_escada);



var _left, _right, _jump,_shoot,_atacar;
	//Dead zone do controle
	//gamepad_set_axis_deadzone(global.controle, 0.25)
//Movimentação
_left = keyboard_check(inputs.left) or gamepad_axis_value(global.controle, gp_axislh) < -0.25;
_right = keyboard_check(inputs.right)or gamepad_axis_value(global.controle, gp_axislh) > 0.25;
_jump = keyboard_check_pressed(inputs.jump)or gamepad_button_check(global.controle, gp_face1);
_shoot = keyboard_check(inputs.shoot)or gamepad_button_check(global.controle, gp_shoulderrb) ;
_atacar = keyboard_check(inputs.atacar);



velh = (_right - _left) * vel;


//aplicar a gravidade
velv += grav;

if (_left)
	{
		
		global.face = 1;
	}
	if(_right)
	{
		
		global.face = 0;
	}


//pulando
if(_chao){

//Receber Dano
if (place_meeting(x,y,obj_entidade_inimigo))
{
	dano =true;
}

if(dano && global.japode = false)
{
	sprite_index = spr_player_dano
	arremesar_h = -10;
	arremesar_v = -10;
	velh = arremesar_h
	velv = arremesar_v
	dano_timer--;
	
	if(dano_timer <= 0){
		dano=false;
		dano_timer = room_speed /4;
		image_blend = c_white;
	}
}
if (_shoot && shoot_timer <= 0)
{
	
	shooting = true;
	var tiro = instance_create_layer(x-10,y+3, layer, obj_tiro);
	tiro.speed = 7
	tiro.direction = 180* global.face;
	if (_shoot = true){
		sprite_index = spr_player_shoot
	}
	shoot_timer = shoot_delay;
}
shoot_timer--;
if (_jump)
{
	velv = -vel_jump;
}
	//se estou chao e me movendo
	if _shoot = false && alarm[0] <= 0{
	if (velh != 0) 
	{
		//Mudar sprite
		sprite_index = spr_player_run
		image_xscale =sign(velh);
	}
	else
	{
		if _shoot = false && global.japode = false {
		sprite_index = spr_player_idle
		}
		else if _shoot = true{
			sprite_index = spr_player_shoot
		}
		
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

//

