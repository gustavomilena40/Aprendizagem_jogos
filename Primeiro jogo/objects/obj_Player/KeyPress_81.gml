/// @description teleport
// You can write your code in this editor

var dir = point_direction(x,y, mouse_x,mouse_y);
var flipped = (mouse_x>x)*2-1;
var x_offset = lengthdir_x(150,dir);
var y_offset = lengthdir_y(150,dir);	
var valido = !place_meeting(x+x_offset,y+y_offset, obj_Terrain);

if (valido && alarm[1]<=0 && stack_<5){
		instance_destroy();
		instance_create_layer(x+x_offset,y+y_offset, "Instances", obj_Player)
		global.damage_-= stack_*0.1
		}		
	

	
	
	
	
	
	 
	
