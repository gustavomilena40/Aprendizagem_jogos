/// @description Attack State

if instance_exists(obj_Player){
	if distance_to_object(obj_Player) >=60 {
		state_ = MOVEMENTE_;
		}
bullet_cooldown_ = room_speed/3;		
enemy_fire_bullet(bullet_cooldown_);
	
}