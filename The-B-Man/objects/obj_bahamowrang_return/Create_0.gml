/// @description Insert description here
// You can write your code in this editor

image_xscale = 0.5
image_yscale = 0.5

moveSpeed = 5

collison_count = 0;

if (instance_exists(obj_mech)) {
	sprite_index = spr_golden_wrang;
	image_xscale = 1
	image_yscale = 1
	depth = -11000
}