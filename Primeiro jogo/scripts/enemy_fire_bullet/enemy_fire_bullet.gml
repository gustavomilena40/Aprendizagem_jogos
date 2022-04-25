///@param bullet_cooldown_
var bullet_cooldown_ = argument0;
	if alarm[0]<=0 {
		var dir = point_direction(x,y, obj_Player.x,obj_Player.y);
		var x_offset = lengthdir_x(0,dir);
		var y_offset = lengthdir_y(0,dir);
		var bullet = instance_create_layer(x+x_offset,y+y_offset,"Instances",obj_EnemyBullet);
		bullet.direction =dir;
		bullet.image_angle=dir;
		alarm[0] = bullet_cooldown_;
	}	