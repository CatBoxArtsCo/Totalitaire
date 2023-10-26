/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Checar se posso ir prox room caso ela exista
if(room_next(room) != -1)
{
	room_goto_next();
	
}
else
{
	//Nao tem room para ir
	game_restart();
}






