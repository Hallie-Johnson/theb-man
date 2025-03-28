/// @description Insert description here
// You can write your code in this editor

obj_Credits.visible = false;
obj_Battle_Bahaman.visible = false;

instance_create_layer(0, 0, "Instances", obj_RoomTransition);
obj_RoomTransition.target_room = rm_Title;	