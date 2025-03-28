/// @description Insert description here
// You can write your code in this editor

// https://www.youtube.com/watch?v=WwULXGNruyM
var video_stage = async_load[? "type"];

switch (video_stage) {
	case "video_start":
	break;
	case "video_end":
		video_close()
		cursor_sprite = spr_cursor;
		instance_create_layer(0, 0, "Instances", obj_RoomTransition);
		obj_RoomTransition.target_room = target_room;	
	break;
}


