var dir = point_direction(x,y, mouse_x,mouse_y);
var flipped = (mouse_x>x)*2-1;

/// draw player
draw_sprite_ext(spr_Player, 0, x, y, flipped, 1,0, image_blend,image_alpha);

///draw gun2
draw_sprite_ext(spr_Gun1, 0,x+3,y,1,flipped,dir,image_blend,image_alpha);

///draw gun1
draw_sprite_ext(spr_Gun1, 0,x-3,y,1,flipped,dir,image_blend,image_alpha);






