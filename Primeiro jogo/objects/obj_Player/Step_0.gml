key_jump_ = keyboard_check_direct(vk_space);

/// passos do pelado
if global.health_<=0{
	instance_destroy();
}
var hinput = keyboard_check(vk_right)-keyboard_check(vk_left);
if hinput!=0{
	speed_[0] += hinput*acceleration_;
	speed_[0] = clamp(speed_[0],-max_speed_, max_speed_ );
} else{
	speed_[0] = lerp(speed_[0],0,friction_)
}

if !place_meeting(x,y+1,obj_Terrain){
	speed_[1]+= gravity_;
} else if key_jump_{
	speed_[1] = jumpHeight_;
}

//ladder
if(keyboard_check(vk_up) || keyboard_check(vk_down)) && place_meeting(x,y,obj_Rope){
	 ladder_=true;
}

if (ladder_){
	speed_[0] =0;
	speed_[1] =0;
	if (keyboard_check(vk_up)) speed_[1]=-3;
	if (keyboard_check(vk_down)) speed_[1]=3;
	if !place_meeting(x,y,obj_Rope)ladder_=false;
	if (key_jump_){
		ladder_=false;
		speed_[1] =-7;
	}
	if(keyboard_check(vk_left) || keyboard_check(vk_right)) ladder_=false;
}


move(speed_, colision_);

warp();

//Poison
if (alarm[3]<=-1)&&(poison=true){
	global.health_=global.health_-(global.health_*(0.003*stack_));
	alarm[3]=poison_cooldown_;
}
	
//Draw Status
if keyboard_check_pressed(ord("C"))&& global.status_T_F_=false{
	global.status_T_F_=true;
	obj_Bar.alarm[0]=room_speed/10;
}

if keyboard_check_pressed(ord("C"))&& global.status_T_F_=true && global.status_control_==1{
	global.status_T_F_=false;
	global.status_control_=0;
}