/// @description Insert description here
// You can write your code in this editor

if (global.paused) {
	speed = 0;	
} else {
	speed = 3;	
}

if (!global.paused) image_angle += 20;

if (!global.paused) image_alpha -= 0.005;

if (image_alpha <= 0) instance_destroy()

if (obj_jester_body.visible == true) {
	part_particles_create(part_sys, x, y, part_trail, 1);
}

