/// @description Insert description here
// You can write your code in this editor

if (global.tutorial_decrypter_complete) {
	instance_create_layer(x, y, "Save", obj_Save);	
}

if (go_to_room != room) {
	instance_create_layer(0, 0, "Instances", obj_RoomTransition);
	obj_RoomTransition.target_room = go_to_room;	
}
