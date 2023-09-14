//Velocidades 
velh = 0;
velv = 0;
vel = 4;
arremesar_h = 0;
arremesar_v = 0;
grav = .20;
vel_jump = 11;
dano = false;
dano_timer = room_speed /4;
global.face = 0;
shoot_timer = 0;
shoot_delay = 20;
shooting = false;
alarm[0] = 0;
global.life = 5;
global.stamina = 5;
global.japode = false;
sprite = spr_player_idle
//definir os comandos de tecla
inputs = {
	left : ord("A"),
	right : ord("D"),
	jump : ord("K"),
	shoot : ord("L"),
	atacar : ord("J"),
}









