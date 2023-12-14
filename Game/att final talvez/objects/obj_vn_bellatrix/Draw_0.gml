/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if draw_vnbell = true
{
draw_self();
if bellvn_falar = false{
mata_texto4 = true;
mata_dialogo4 = true;
}if bellvn_falar = true
{
mata_texto4 = false;
mata_dialogo4 = false;
}
var yy = (y - sprite_yoffset) - sprite_height/4;

if mata_dialogo4 = false{
draw_sprite(spr_bellatrix_dialogue,image_index,210,195);
}
	

draw_set_font(fnt_dialogo);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);


if mata_texto4 = false{
draw_text(210,195, texto_bellvn);
}
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);
}








