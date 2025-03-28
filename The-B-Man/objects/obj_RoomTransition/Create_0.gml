/// @description Insert description here
// You can write your code in this editor

draw_height_top = 0; // Current height of the top rectangle
fill_speed = 50; // Speed at which the rectangles fill vertically
draw_height_bottom = 0; // Current height of the bottom rectangle

rotation = 0;
rotation_speed = 10;

transition = true;

if (instance_exists(obj_Credits)) {
	instance_destroy(obj_Credits);	
}

if (instance_exists(obj_Music)) {
	audio_sound_gain(obj_Music.snd, 0, 1000);
	instance_destroy(obj_Music);
}

instance_deactivate_all(true);


