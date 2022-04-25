/// @description Insert description here
// You can write your code in this editor draw_self();
draw_self();

if !instance_exists(obj_Player) exit;

//Draw bar
draw_health_ = lerp(draw_health_, global.health_, .25);

draw_set_color(c_black);
draw_rectangle(x+6.7, y+41, x+313*draw_health_/global.max_health_, y+76.6, false);
draw_set_color(c_purple);
draw_rectangle(x+79.5, y+6.6,(x+79.5)+(global.xp_/global.xp_max_*238),y+17,false);
draw_set_color(c_white);
var txt_ = string(round(global.health_)) + "/" + string(round(global.max_health_));
draw_text(x+130,y+50,txt_);
if (global.level_>=10){
	draw_text(x+49,y+1.7,global.level_);
}else{
	draw_text(x+52,y+1.7,global.level_);
}

//Draw status
if global.status_T_F_ == true{
	draw_text(35,250,"Damage: " + string(global.damage_));
	draw_text(35,270,"Fire Rate: " + string(obj_Player.bullet_cooldown_));
	draw_text(35,290,"Speed: " + string(obj_Player.max_speed_));
}
//Draw Skills and CD
//Skill Q
if(obj_Player.alarm[1]==-1 && obj_Player.stack_<5){
	draw_sprite(spr_Skill1,0,x+100,y-40);
}else if(obj_Player.alarm[1]!=-1 && obj_Player.stack_<5){
	draw_sprite(spr_Skill1,1,x+100,y-40);
	draw_text(x+111,y-36,ceil(round(obj_Player.alarm[1])/room_speed));
}else{
	draw_sprite(spr_Skill1,1,x+100,y-40);
}

//Skill E
if(obj_Player.alarm[2]==-1 && obj_Player.stack_!=10){
	draw_sprite(spr_Skill2,0,x+160,y-40);
}else if(obj_Player.alarm[2]!=-1 && obj_Player.stack_!=10){
	draw_sprite(spr_Skill2,1,x+160,y-40);
	draw_text(x+171,y-36,ceil(round(obj_Player.alarm[2])/room_speed));
}else{
	draw_sprite(spr_Skill2,1,x+160,y-40);
}
	
//Skill R
if(obj_Player.stack_==10){
	draw_sprite(spr_Skill3,0,x+220,y-40);
}else{
	draw_sprite(spr_Skill3,1,x+220,y-40);
	draw_text(x+231,y-36,obj_Player.stack_);
}




