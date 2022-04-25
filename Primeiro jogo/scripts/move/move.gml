///@param speed
///@param colision
var speed_ = argument0;
var colision_ = argument1;

if (colision_){
	if place_meeting(x+speed_[0],y,obj_Terrain){
		while !place_meeting(x+sign(speed_[0]),y,obj_Terrain){
			x+=sign(speed_[0]);
		}
		speed_[@ 0]=0;
	}
}	
x += speed_[0];

if(colision_){
	if place_meeting(x,y+speed_[1],obj_Terrain){
		while !place_meeting(x,y+sign(speed_[1]),obj_Terrain){
			y+=sign(speed_[1]);
		}
		speed_[@ 1]=0;
	}
}
	y += speed_[1];