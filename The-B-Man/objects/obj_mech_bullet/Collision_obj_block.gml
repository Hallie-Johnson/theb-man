/// @description Insert description here
// You can write your code in this editor

speed = 0;

image_alpha -= 0.05;
image_blend = c_red;

if (image_alpha == 0) {
	instance_destroy();
}

