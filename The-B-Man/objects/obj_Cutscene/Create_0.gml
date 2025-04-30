/// @description Insert description here
// You can write your code in this editor

video = video_open(video_name);

if (string_pos("Cutscene_", video_name == -1)) {
	show_message("Unable to find '" + video_name + "' video file.");
	video_close();
	instance_create_layer(0, 0, "Instances", obj_RoomTransition);
	obj_RoomTransition.target_room = target_room;		
}

if (global.sound_music == false || room == rm_Cutscene_1) video_set_volume(0);
else video_set_volume(0.25);

video_enable_loop(false);

//alarm[0] = video_seconds * room_speed;

alpha_text = 1;

alpha_text_fade = false;

alarm[1] = 5 * game_get_speed(gamespeed_fps)/2;

cursor_sprite = spr_blank; 


