/// @description Insert description here
// You can write your code in this editor

image_xscale = 0.5
image_yscale = 0.5

moveSpeed = 5

target_x = x
target_y = y

if_thrown = true;

time = 0;

collison_count = 0;

if (global.sound_effects) audio_play_sound(snd_sfx_bahamowrang_throw, 1, false);