/// @description initialize enemy
speed_=[0, 0];
speed_push_=[0,0];
speeed_ = 1;
health_= 4; 

// States
MOVEMENTE_=0;
ATTACK_ =1;
HIT_=2;
state_= MOVEMENTE_;

bullet_cooldown_ = room_speed/1.5;
alarm[0]= bullet_cooldown_;