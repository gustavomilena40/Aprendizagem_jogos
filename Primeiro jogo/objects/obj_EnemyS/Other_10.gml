/// @description Move State
if instance_exists(obj_Player){
	//move force
	var dir = point_direction(x,y, obj_Player.x,obj_Player.y);
	speed_[0] = lengthdir_x(speeed_, dir);
	speed_[1] = lengthdir_y(speeed_, dir);
	x+= speed_[0];
	y+= speed_[1];

	//push force
	x+= speed_push_[0];
	y+= speed_push_[1];
	if !place_meeting(x,y,obj_Enemy || obj_EnemyS){
		speed_push_[0] =lerp(speed_push_[0],0,.1);
		speed_push_[1] =lerp(speed_push_[1],0,.1);
	}
	
	//bullet
	bullet_cooldown_=room_speed/1
	enemy_fire_bullet(bullet_cooldown_);
	

	if distance_to_object(obj_Player) <150 {
		state_ = ATTACK_;
		}
}