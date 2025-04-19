/// @description Insert description here
// You can write your code in this editor

speed = 3;

image_xscale = 0.5;
image_yscale = 0.5;

image_alpha = 1;

color = 2

if (color == 1) {
	image_blend = c_fuchsia;
} else if (color == 2) {
	image_blend = c_lime;	
} else {
	image_blend = c_red;	
}

if (variable_global_exists("sound_effects")) {
	if (global.sound_effects) 
		audio_play_sound(snd_sfx_bahamowing_enemy_fire, 1, false);
}

if (instance_exists(obj_jester_weapon)) {
	depth = obj_jester_weapon.depth + 1;	
}


part_sys = part_system_create();
part_trail = part_type_create();

// Define particle trail properties
part_type_shape(part_trail, pt_shape_smoke);
part_type_color1(part_trail, c_lime); // Red color
part_type_alpha2(part_trail, 1, 0); // Fades from fully visible to invisible
part_type_size(part_trail, 0.1, 0.2, 0, 0);
part_type_speed(part_trail, 1, 2, 0, 0);
part_type_life(part_trail, 10, 30); // Lifetime of particles
part_system_depth(part_sys, depth + 1);
part_type_direction(part_trail, 0, 0, 0, 0);