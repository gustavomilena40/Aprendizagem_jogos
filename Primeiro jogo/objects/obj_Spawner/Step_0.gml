/// @description Insert description here
		if alarm[0]<=0{
		instance_create_layer(x,y, "Instances", obj_Enemy);
		instance_create_layer(x,y, "Instances", obj_EnemyS);
		alarm[0]=spawn_cooldown_;
		}