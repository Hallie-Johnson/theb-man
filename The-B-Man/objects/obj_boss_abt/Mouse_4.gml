/// @description Insert description here
// You can write your code in this editor

if (!obj_boss_cost.clicked && !obj_boss_juul.clicked) {
	clicked = true;
	
	instance_create_layer(0, 0, "Instances", obj_RoomTransition);
	obj_RoomTransition.target_room = rm_Pre_Road4;	
}