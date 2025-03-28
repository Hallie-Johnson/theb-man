/// @description Insert description here
// You can write your code in this editor

if (!obj_boss_abt.clicked && !obj_boss_cost.clicked && global.driving_level4_complete && global.flying_level4_complete) {
	clicked = true;
	
	instance_create_layer(0, 0, "Instances", obj_RoomTransition);
	obj_RoomTransition.target_room = rm_Pre_Battle4;	
}