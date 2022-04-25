/// @description Insert description here
// You can write your code in this editor
var flipped = (obj_Player.x>x)*2-1;

/// draw enemy
draw_sprite_ext(spr_EnemyS , 0, x, y, flipped, 1,0, image_blend,image_alpha);