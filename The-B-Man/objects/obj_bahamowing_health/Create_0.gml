/// @description Insert description here
// You can write your code in this editor

image_xscale = 0.75;
image_yscale = 0.75;

if (x < 100 || x > room_width - 100 || y < 100 || y > room_height - 100) {
	instance_destroy();	
}