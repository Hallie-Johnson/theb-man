/// @description Insert description here
// You can write your code in this editor

//instance_create_layer(x, y, "Instances_2", obj_GameStartup);

instance_create_layer(0, 0, "Instances_2", obj_RoomTransition);
obj_RoomTransition.target_room = rm_IconHome;	