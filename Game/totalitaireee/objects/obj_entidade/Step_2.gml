/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Sistema de colisão


//colisão horizontal
//Checar se estou colidino com a parede
var _col =  instance_place(x + velh, y, obj_plat);

if (_col)
{
	if (velh > 0)
	{
		x = _col.bbox_left + (x - bbox_right);
	}
	
	if (velh < 0)
	{
		x = _col.bbox_right + (x - bbox_left);
	}
	//quando eu colidir eu paro
	velh = 0;
	
}
x += velh;


var _col =  instance_place(x, y + velv, obj_plat);

if (_col)
{
	if (velv > 0)
	{
		//ir para baixo
		y = _col.bbox_top + (y - bbox_bottom);
	}
	
	if (velv < 0)
	{
		//indo para cima
		y = _col.bbox_bottom + (y - bbox_top);
	}
	//quando eu colidir eu paro
	velv = 0;
	
}

y += velv;










