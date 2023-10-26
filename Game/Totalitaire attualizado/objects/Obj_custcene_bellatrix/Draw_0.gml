/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var _texto = string_copy(texto_bellatrix,0,indice);
if bellatrix_falar = false{
mata_texto1 = true;
mata_dialogo1 = true;

}
if bellatrix_falar = true{
mata_texto1 = false;
mata_dialogo1 = false;

}
var yy = (y - sprite_yoffset) - sprite_height/2;
draw_self();
if mata_dialogo1 = false{
draw_sprite(spr_balao_dialogo,image_index,x,yy);
}
	


draw_set_font(fnt_dialogo);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if mata_texto1 = false{
draw_text_ext(x-10+margem,yy+8, _texto,20,220-margem);
}



draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);




