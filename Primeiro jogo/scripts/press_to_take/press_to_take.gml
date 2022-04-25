draw_self();
if place_meeting(x,y, obj_Player){
	draw_text(x-100,y-40, "Press Left click to take");
	if (mouse_check_button(mb_left)){
		instance_destroy();
	}
}
