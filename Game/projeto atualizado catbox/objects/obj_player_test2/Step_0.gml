if(global.pause) exit;
//sistema de controle do player
chao = place_meeting(x,y +1,obj_plat);

var estou_parede = place_meeting(x+4,y, obj_parede) || place_meeting(x-4,y,obj_parede);

var _left, _right, _jump,_jump_s,_run,_shoot,_atacar,_deslizar;
	//Dead zone do controle
	//gamepad_set_axis_deadzone(global.controle, 0.25)
//Movimentação
if global.life > 0 {

_left = keyboard_check(vk_left);
_right = keyboard_check(vk_right);

}else{
vel_morta = true;
}

_jump = keyboard_check_pressed(vk_space);
_jump_s = keyboard_check_released(vk_space);
_run = keyboard_check(vk_shift);
_shoot = keyboard_check_pressed(ord("Q"));
//_atacar = keyboard_check(inputs.atacar);
_deslizar = keyboard_check_pressed(ord("Z"));

if (_run  && global.life > 0) //Caso corra
{
	var velocidade = velh_cor;
}
else //caso nao corra
{
	var velocidade = max_velh;
}
if (_deslizar)
{
	slide = true;
}
if vel_morta = false {
velh = (_right - _left) * velocidade;
}else
{
velh = 0;
velv = 0;
max_velv=0;
max_velh=0;
grav=0;
}



//Linha de codigo que faz o sprite virar para a direçao que eu quero
if(velh != 0)
{
	image_xscale = sign(velh);
	if (_run && alarm[0]<= 0)
	{
		sprite = spr_player_run
	}
	else{
		if(alarm[0]<= 0){
		sprite = spr_player_run; //SUBSTITUIR QUANDO TIVER O SPRITE DE ANDAR
		}
	
	}
	
} else if alarm[0]<= 0
{
	sprite = spr_player_idle
}

if (chao)
{
	//Pular caso eu esteja no chão
	if(_jump && dano = false && global.life > 0) velv = -max_velv;
	pulo = max_pulo;
	
}
else
{
	
	//Quando eu não estiver no chão
	velv += grav;
	
	//Solto o botão de pulo
	if(_jump_s && dano = false && global.life > 0)
	{
		if (velv < 0)
		{
		velv = velv * .5;
		}
	}
	if (_jump && pulo > 1)
	{
		velv = -max_velv;
		pulo--;
	}
	//Ajustar as sprite do player
	if global.life>0{
	if (velv< 0) sprite = spr_player_jump;
	else sprite = spr_player_jump;
	}
	
}

//Deslizando
if(slide && chao && estou_parede = false && dano = false && global.life > 0) //Ajeitar dps
{
	if (sprite_index = spr_player_slide)
	{
	slide = false;
	}else{
	slide_timer--;
	sprite = spr_player_dano; //MUDAR QUANDO TIVER SLIDE DE DESLIZAR
	velh = image_xscale * slide_vel;
	mask_index=spr_player_dano
	var sem_teto= !place_meeting(x,y - sprite_height, obj_plat)
	}
	if(slide_timer <= 0 && sem_teto)
	{
		slide = false;
		slide_timer = room_speed / 4;
		image_yscale = 1;
		mask_index=spr_player_idle
		
	}
	

}

//Codigo para definir onde eu estiver olhando caso eu execute algum tipo de ataque
if global.life >0{
	if (_left)
	{
		
		face = 1;
	}
	if(_right)
	{
		
		face = 0;
	}
}

	
//Sistema de tiro
if (_shoot && shoot_timer <= 0 && global.stamina > 0 && dano = false && global.life > 0)
{
	global.stamina--;
	shooting = true;
	var tiro = instance_create_layer(x-10,y+3, layer, obj_tiro);
	tiro.speed = 7
	tiro.direction = 180* face;
	if (shooting = true){
		sprite = spr_player_shoot
		alarm[0]=30;
	}
	shoot_timer = shoot_delay;
}
shoot_timer--;

//Matar inimigo quando pisar na cabeça dele
//var dano_inimigo = instance_place(x+10,y - 3, obj_inimigo20);

//if (dano_inimigo)
//{
	//velv = -max_velv;
	//instance_destroy(dano_inimigo);
//}
//Recebendo dano
if (place_meeting(x,y, obj_inimigo20) &&  global.life > 0)
{
	dano = true;
	global.perm_dano = false;
}
if (place_meeting(x,y, obj_inimigo2030) &&  global.life > 0)
{
	dano = true;
	global.perm_dano = false;
}
if (place_meeting(x,y, obj_hitbox) &&  global.life > 0)
{
	dano = true;
	global.perm_dano = false;
}
if (dano)
{
	
	if (controle_dano){
	velv = -3;
	controle_dano = false;
	dano_dir = sign(velh) * -1.5;
	
	}
	sprite = spr_player_dano2;
	velh = dano_dir;
	
	dano_timer--;
	
	if (dano_timer <= 0)
	
	{
		dano = false;
		global.perm_dano = true;
		dano_timer = room_speed;
		image_blend = c_white;
		controle_dano = true;
		
    }

}



if(estou_parede)
{
	
		sprite = spr_player_deslizar//Mudar dps
	
	
	pulo++;
	if(velv > 1){
		velv = 1;
		if(_jump && global.life>0){
			sprite = spr_player_jump;
			velv = velv;
			velh-=10 *image_xscale;
			
		}
	}
	
}

if (global.life <= 0){
	
	
	sprite = spr_player_morte;
	
	
}

if alarm[0] <=0 && morte=true
	
	{
	instance_destroy();
	global.japode = true;
	}

sprite_index = sprite;