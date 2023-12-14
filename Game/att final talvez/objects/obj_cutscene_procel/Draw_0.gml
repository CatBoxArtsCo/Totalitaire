if draw_procel = true{
	draw_self();
if procel_falar = false{
mata_texto2 = true;
mata_dialogo2 = true;
}if procel_falar = true
{
mata_texto2 = false;
mata_dialogo2 = false;
}
var yy = (y - sprite_yoffset) - sprite_height/4;

if mata_dialogo2 = false{
draw_sprite(spr_balao_dialogo,image_index,x+10,yy-10);
}
	


draw_set_font(fnt_dialogo);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if mata_texto2 = false{
draw_text(x-20,yy-7, texto_procel);
}



draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);
}














