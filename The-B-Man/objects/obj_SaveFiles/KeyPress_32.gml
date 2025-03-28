/// @description Insert description here
// You can write your code in this editor

if (global.timestamp == "N/A") {
	instance_create_layer(x, y, "Save", obj_Save);
} else {
	instance_create_layer(0, 0, "Instances", obj_RoomTransition);
	obj_RoomTransition.target_room = rm_Cutscene_1;	
	obj_RoomTransition.depth = -1000;
}


