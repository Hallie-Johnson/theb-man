/// @description Insert description here
// You can write your code in this editor

image_xscale = 2;
image_yscale = 2;

obj_left = x - sprite_xoffset;
obj_right = x - sprite_xoffset + sprite_width;
obj_top = y - sprite_yoffset;
obj_bottom = y - sprite_yoffset + sprite_height;

selected = false;

if (global.battle_level2_complete && global.driving_level2_complete && global.flying_level2_complete) {
	sprite_index = spr_Map2Complete;
}
