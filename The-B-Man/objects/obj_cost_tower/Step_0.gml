/// @description Insert description here
// You can write your code in this editor

if (death) {
	image_angle -= 0.05;
	y += 2;
	image_alpha -= 0.005;
	image_blend = c_dkgray;
}

if (image_alpha <= 0) {
	instance_destroy()	
}