//Velocidades 
velh = 0;
velv = 0;
vel = 3;
max_velh = 4;
slide_vel = 8;
arremesar_h = 0;
arremesar_v = 0;
grav = .20;
vel_jump = 8;
japodepular = true;
dano = false;
dano_timer = room_speed /4;
controle_dano = true;
dano_dir = 0;
global.face = 0;
shoot_timer = 0;
shoot_delay = 20;
shooting = false;
slide = false;
slide_timer = room_speed/2;
alarm[0] = 0;
alarm[1] = 0;
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
	deslizar: ord("Q"),
}









