/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor









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
			velh = choose(vel,-vel);
		}
		else
		{
			velh = 0;
		}
}