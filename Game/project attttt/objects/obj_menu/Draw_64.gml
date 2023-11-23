//Desenhar o menu

draw_set_font(fnt_dialogo5);



var dist = 55;
var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();
var x1 = gui_largura / 2;
var y1 = gui_altura/2;
draw_sprite(spr_totalitaire,0,470,250);



for (var i = 0; i < op_max; i++){
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	
	if(index == i){
		draw_set_color(c_blue);
		draw_text_scribble(x1, y1 + (dist * i), string("[wave]{0}[/wave]",opcoes[i]));
		
	}
	else
	{
		draw_set_color(c_white);
		draw_text_scribble(x1, y1 + (dist * i), string("{0}",opcoes[i]));
	}
	
	
	
	
	
}

draw_set_font(-1);






