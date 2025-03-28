/// @description Insert description here
// You can write your code in this editor

if (global.battle_level5_complete) {
	instance_create_layer(0, 0, "Instances", obj_RoomTransition);
	obj_RoomTransition.target_room = rm_Street1;
}