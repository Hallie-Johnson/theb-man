/// @description Insert description here
// You can write your code in this editor

image_xscale = 0.5
image_yscale = 0.5

speed = 8;

image_angle = point_direction(x, y, mouse_x, mouse_y);

depth = -500;

image_alpha = 1;

if (global.sound_effects) audio_play_sound(snd_sfx_bahamowing_fire, 1, false);