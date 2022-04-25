/// @description Insert description here
// You can write your code in this editor
if not paused_{
	paused_=true;
	instance_deactivate_all(true);
}else{
	paused_=false;
	instance_activate_all();
}