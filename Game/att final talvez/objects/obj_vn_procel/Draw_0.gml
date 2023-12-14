/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if draw_procelvn = true
{
draw_self();

if procelvn_falar = false{
mata_texto3 = true;
mata_dialogo3 = true;
}if procelvn_falar = true
{
mata_texto3 = false;
mata_dialogo3 = false;
}
var yy = (y - sprite_yoffset) - sprite_height/4;

if mata_dialogo3 = false{
draw_sprite(spr_procel_dialogue,image_index,210,195);
}
	

draw_set_font(fnt_dialogo);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);


if mata_texto3 = false{
draw_text(210,195, texto_procelvn);
}
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);
}










