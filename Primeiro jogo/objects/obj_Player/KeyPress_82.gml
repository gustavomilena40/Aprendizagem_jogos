/// @description Release skill
// You can write your code in this editor
if stack_==10{
	global.health_=global.health_-global.health_*0.35;
	stack_=0;
	poison=false;
	alarm[4]=room_speed*4;
	global.damage_+=2;
	bullet_cooldown_-=3;
	global.life_steal_+=0.035;
}