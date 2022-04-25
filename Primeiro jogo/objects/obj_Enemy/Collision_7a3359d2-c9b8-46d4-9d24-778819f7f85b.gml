/// @description take damege
health_ -=obj_Bullet.damage_bullet_;
instance_destroy(other);
state_ = HIT_;
var dir = other.direction;
speed_push_[0] = lengthdir_x(2,dir);
speed_push_[1] = lengthdir_y(2,dir);
life_steal(global.life_steal_,global.life_steal_key_);