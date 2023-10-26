/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

alarm[0] = 0;
timer_dano = room_speed /4;
morrer = false;
vida = 1;
dano = false;
velh = 2;
sprite = spr_inimigo_parado


// Inherit the parent event
event_inherited();

//Personalizar as variaveis
//decidir se vai direita ou esqueerda
vel = choose(1,-1);

andando = choose(true, false);
tempo_decidir_andar = room_speed * 3;

if (andando)
{
//Escolher a direçao se ele decidiuy andar
		if(andando)
		{
			velh = choose(velh,-velh);
		}
		else
		{
			velh = 0;
		}
}