if(global.pause) exit;
/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//checar se inimigo estiver no chao
var _chao = place_meeting(x,y + 1, obj_plat);
var tomou = (place_meeting(x,y,obj_tiro))
tomou = false;

if velh> 0{
face = 1;

}
if velh<0 {
face = 0;

}

var _player = collision_line(x,y-sprite_height/24,x+(dist*image_xscale),y-sprite_height/24, obj_player_test2,0,1);

if (_player && ataque_timer <=0)
{
ataque = true;
if ataque = true{
	
sprite_index = spr_inimigo_ataque;
var _hitbox = instance_create_layer(x+10,y, layer, obj_hitbox);
	
	
}
ataque_timer = ataque_delay

velh =0;
show_debug_message("me viu")
}
ataque_timer--;


if (place_meeting(x,y,obj_tiro))
{
	dano = true;
	sprite = spr_inimigo_morte;
	alarm[0] = 180;
}

if(dano = true )
{
	sprite_index = spr_inimigo_morte
	
	timer_dano--;
	dano=false;
	
}

if(_chao && morrer = false )
{
	//diminuir tempo decidir andar
	tempo_decidir_andar -= 1;
	//Se tempo acabou eu decido se eu vou andar
	if (tempo_decidir_andar <= 0)
	{
		andando = choose(true,false);
		
		
		
		//Escolher a direçao se ele decidiuy andar
		if(andando)
		{
			velh = choose(vel,-vel);
		}
		else
		{
			velh = 0;
		}
		
		//Resetar time
		tempo_decidir_andar = room_speed * 3;
	}
	
	
	
	//Controlar animação inimigo
	if morrer = false {
	if (velh != 0 )
	{
		sprite_index = spr_inimigo_andando;
		image_xscale = sign(velh);
		
	}
	else
	{
		if ataque = false{
		sprite_index = spr_inimigo_parado;
		}
		
	}
	
	}
	
	
	//Se eu bater na parede, mudo direção
	if (place_meeting(x + velh, y, obj_plat))
	{
		velh *= -1;
	}
	//Nao cair caso nao tenha colisao chao
	
	if (place_meeting(x +(velh * 30),y +1, obj_plat) == false)
	{
		//Se eu nao posso cair e nao estou tocando chao na minha frente entao mudo direçao
		velh *= -1;
	}
}

else
{ //se eu nao estiver no chao, aplica gravidade
 velv += grav;

 velh = 0;
 
 if(velh != 0)
 {
	image_xscale = sign(velh);
	
 }
}









