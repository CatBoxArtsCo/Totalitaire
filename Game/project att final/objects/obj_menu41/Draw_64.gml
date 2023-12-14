//Desenhar o menu

draw_set_font(fnt_dialogo5);



var dist = 55;
var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();
var x1 = gui_largura / 2;
var y1 = gui_altura/2;
draw_sprite(spr_logo,0,670,250);
draw_sprite(spr_newgame,0,470,500);

draw_sprite(spr_continuar,0,870,500);
if esquerda == true{
draw_sprite(spr_newgame_ativado,0,470,500);
}

if direita == true{
draw_sprite(spr_continuar_ativado,0,870,500);
}



