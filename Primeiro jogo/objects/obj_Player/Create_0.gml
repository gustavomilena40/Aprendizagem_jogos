/// @description Insert description here
speed_=[0,0];
gravity_ =.5;
jumpHeight_=-7;
jumps_=0;
jumpNumber_=10;
acceleration_=.2;
max_speed_=3;
friction_=.3;
poison=false;
stack_=0;
ladder_=false;
colision_=true;


keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("S"), vk_down);
keyboard_set_map(ord("D"), vk_right);

//Bullet CD
bullet_cooldown_ =global.bullet_cooldown_;
alarm[0]= bullet_cooldown_;

//Q CD
skill1_cooldown_ = room_speed
alarm[1]= skill1_cooldown_;

//E CD
skill2_cooldown_ = room_speed*2.5;
alarm[2]= skill2_cooldown_;

poison_cooldown_ = room_speed
alarm[3]= poison_cooldown_;

