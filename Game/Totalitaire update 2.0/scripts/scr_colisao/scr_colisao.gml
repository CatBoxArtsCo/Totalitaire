// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_colisao(){
//Colisão horizontal
repeat(abs(velh))
{
	//Subindo e descendo rampas
	
	//Subindo
	//if (place_meeting(x+sign(velh),y, obj_plat) && !place_meeting(x + sign(velh), y - 2, obj_plat)){y --; } 
	//Descendo
	//if (!place_meeting(x +sign(velh),y, obj_plat) &&
	//!place_meeting(x + sign(velh), y +1, obj_plat) &&
	//place_meeting(x+sign(velh),y + 2, obj_plat)) {y++;}
	
	
	if(!place_meeting(x+ sign(velh),y, obj_plat))
	{
	//Prox pixel nao colido com parede/chao/etc
	//Posso avançar 1 pixel
	x+= sign(velh);
	}
	else{
		//No proximo pixel eu entro em uma parede/chao
		velh = 0;
		break;
	}
}



//Colisão vertical
repeat(abs(velv))
{
	if(!place_meeting(x,y+ sign(velv), obj_plat))
	{
	//Prox pixel nao colido com parede/chao/etc
	//Posso avançar 1 pixel
	
	y+= sign(velv);
	}
	else{
		//No proximo pixel eu entro em uma parede/chao
		velv = 0;
		break;
	}
}


x+= velh;




}