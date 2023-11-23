//Icone da bellatrix
draw_sprite(spr_icon_bellatrix,0,20,80)

//Icone da barra de vida
if global.life = 5 {
draw_sprite(spr_life,0,150,100)
}
if global.life = 4 {
draw_sprite(spr_life,1,150,100)
}
if global.life = 3 {
draw_sprite(spr_life,2,150,100)
}
if global.life = 2 {
draw_sprite(spr_life,3,150,100)
}
if global.life = 1 {
draw_sprite(spr_life,4,150,100)
}
if global.life = 0 {
draw_sprite(spr_life,5,150,100)

}


//Icone da estamina
if global.stamina = 5
{
draw_sprite(spr_cooldown,5,155,155)
}
if global.stamina = 4
{
draw_sprite(spr_cooldown,4,155,155)
}
if global.stamina = 3
{
draw_sprite(spr_cooldown,3,155,155)
}
if global.stamina = 2
{
draw_sprite(spr_cooldown,2,155,155)
}
if global.stamina = 1
{
draw_sprite(spr_cooldown,1,155,155)
}
if global.stamina = 0
{
draw_sprite(spr_cooldown,0,155,155)
}

