/// @description Hit State


move(speed_push_, true);
speed_push_[0] =lerp(speed_push_[0],0,.1);
speed_push_[1] =lerp(speed_push_[1],0,.1);

if point_distance(0,0, speed_push_[0], speed_push_[1])<1{
	state_ = MOVEMENTE_;
}