/// @description Insert description here
// You can write your code in this editor

video = video_open(video_name);

if (global.sound_music == false || room == rm_Cutscene_1) video_set_volume(0);

video_enable_loop(false);

//alarm[0] = video_seconds * room_speed;

alpha_text = 1;

alpha_text_fade = false;

alarm[1] = 5 * game_get_speed(gamespeed_fps)/2;

cursor_sprite = spr_blank; 


