/// @description Insert description here
// You can write your code in this editor

cursor_sprite = spr_cursor;

if (room == rm_Cutscene_1) {
	video_close()
	audio_stop_sound(snd_intro);
	room_goto(rm_Title)
} else {	
	instance_create_layer(0, 0, "Instances", obj_RoomTransition);
	obj_RoomTransition.target_room = target_room;	
}	

video_close()