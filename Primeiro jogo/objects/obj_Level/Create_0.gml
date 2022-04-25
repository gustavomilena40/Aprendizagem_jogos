/// @description Insert description here
// You can write your code in this editor
//Level var
global.level_=1;
global.level_buff_= 0.2;
global.xp_=0;
global.xp_max_ = 10*global.level_;
global.damage_=1;
global.bullet_cooldown_=room_speed/6.5;
global.max_health_=50;
global.health_=global.max_health_;
global.life_steal_=0;
global.life_steal_key_=false;
global.status_T_F_=false;
global.status_control_=0;
life_diference_=0;


//GAMBIARRA PRA PAUSAR O JOGO NA VERSÃO FREE 
//MUDAR ISSO PRA UM OBJ GAME
TOGGLE_PAUSE=0;
paused_=0;
pause_sprite_=noone;