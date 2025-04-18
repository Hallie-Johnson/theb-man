/// @description Insert description here
// You can write your code in this editor

angle = 5;

image_xscale = 1.5;
image_yscale = 1.5;

part_sys = part_system_create();
part_trail = part_type_create();

// Define particle trail properties
part_type_shape(part_trail, pt_shape_flare);
part_type_color1(part_trail, c_yellow); // Red color
part_type_alpha2(part_trail, 1, 0); // Fades from fully visible to invisible
part_type_size(part_trail, 0.1, 0.5, 0, 0);
part_type_speed(part_trail, 1, 2, 0, 0);
part_type_life(part_trail, 10, 30); // Lifetime of particles
part_system_depth(part_sys, obj_mech.depth - 1);


if (obj_mech.image_xscale == 1) {
	speed = -3;
	angle = -angle;
	part_type_direction(part_trail, 0, 0, 0, 0);
} else {
	speed = 3;
	part_type_direction(part_trail, 180, 180, 0, 0);
}


