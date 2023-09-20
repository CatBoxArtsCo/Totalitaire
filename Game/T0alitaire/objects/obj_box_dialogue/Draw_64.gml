/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if distance_to_object(obj_player_test2) < 24
{
	if textocorta < string_length(texto)	{textocorta ++;}
	aparecetexto = lerp(aparecetexto,56,0.2);
	
}
else
{
	textocorta = 0;
	aparecetexto = lerp(aparecetexto,0,0.2);
}

// copia a string com o que deveria ser cortado do texto
var s = string_copy(texto,0,textocorta);

// caixa do texto
draw_set_color(c_black);
draw_rectangle(0,0,TELAW,TELAH-textocorta,false);
draw_set_color(-1);

// texto
draw_set_font(ft_menu);
draw_text_ext(16,TELAH-aparecetexto+8,s,12,TELAW-32);
draw_set_font(-1);





















