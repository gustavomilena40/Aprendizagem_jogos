/// @description soft colide
if x== other.x && y=other.y{
	x+= sign(other.id-id);
}

	global.health_-=1;

var dir = point_direction(other.x,other.y,x,y);
speed_push_[0] += lengthdir_x(5, dir);
speed_push_[1] += lengthdir_y(5, dir);
