//sistema de controle do player
var _chao = place_meeting(x,y +1, obj_plat) || place_meeting(x,y+1, obj_escada);



var _left, _right, _jump,_shoot,_atacar,_deslizar;
	//Dead zone do controle
	//gamepad_set_axis_deadzone(global.controle, 0.25)
//Movimentação
_left = keyboard_check(inputs.left) or gamepad_axis_value(global.controle, gp_axislh) < -0.25;
_right = keyboard_check(inputs.right)or gamepad_axis_value(global.controle, gp_axislh) > 0.25;
_jump = keyboard_check_pressed(inputs.jump)or gamepad_button_check(global.controle, gp_face1);
_shoot = keyboard_check(inputs.shoot)or gamepad_button_check(global.controle, gp_shoulderrb) ;
_atacar = keyboard_check(inputs.atacar);
_deslizar = keyboard_check_pressed(inputs.deslizar);


if (dano =false){
velh = (_right - _left) * vel;
}



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
if (_deslizar){
	slide = true;
}
if (slide) 
{
	slide_timer--;
	sprite_index = spr_player_shoot;
	velh = image_xscale * slide_vel;
	image_yscale = .2;
	if(slide_timer <= 0)
	{
		slide = false;
		slide_timer = room_speed/2
		image_yscale = 1;
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
if _shoot = false && alarm[0] <= 0  {
	if (velh != 0 ) 
	{
		//Mudar sprite
		if slide = true{
			sprite_index = spr_player_shoot
		}else{
		sprite_index = spr_player_run
		}
		
		image_xscale =sign(velh);
	}
	else
	{
		if _shoot = false && global.japode = false && slide = false {
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
	if dano && global.japode = false{
	sprite_index = spr_player_dano;
	velh = dano_dir;
	velv = -3;
	dano_timer--;
	japodepular= false
	
	if(dano_timer <= 0){
		dano=false;
		dano_timer = room_speed /4;
		image_blend = c_white;
		alarm[0] = 90;
		
	}
	}
	else{
	if alarm[0]<= 0{
	sprite_index = spr_player_jump
	}
	
	
	}
//aplicar a gravidade
velv += grav;
if (velh != 0)
{
	image_xscale = sign(velh)
}



}
//Receber Dano
if (place_meeting(x,y,obj_entidade_inimigo))
{
	dano =true;
	alarm[1] = 90;
}

if(dano && global.japode = false)
{
	if (controle_dano)
	{
		velv= -3;
		
		controle_dano = false;
		
		dano_dir = sign(velh)*-10;
		
		velh = dano_dir;
		image_speed = .1;
	}
	sprite_index = spr_player_dano
	velh = dano_dir
	
	dano_timer--;
	
	if(dano_timer <= 0){
		dano=false;
		dano_timer = room_speed /4;
		image_blend = c_white;
		controle_dano = true;
		image_speed = .5;
	}
}
//

