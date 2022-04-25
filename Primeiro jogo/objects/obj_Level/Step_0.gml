/// @description Insert description here
// You can write your code in this editor
if global.xp_>= global.xp_max_{
	global.xp_ =0;
	global.level_+=1;
	global.xp_max_ = 10*global.level_;
	global.damage_+= global.damage_*global.level_buff_;
	global.max_health_=global.max_health_+(global.max_health_*global.level_buff_);
	global.health_=global.max_health_;
}

if(global.health_<global.max_health_){
	global.life_steal_key_=true;
}else{
	global.life_steal_key_=false;
}
if(global.health_>global.max_health_){
	life_diference_= global.health_-global.max_health_;
	global.health_-=life_diference_;
	
}
	