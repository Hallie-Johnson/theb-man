/// @description Insert description here
// You can write your code in this editor

instance_destroy(obj_tutorial_icon_clues);
instance_destroy(obj_tutorial_icon_bahamobile);
instance_destroy(obj_tutorial_icon_bahamowing);
instance_destroy(obj_tutorial_icon_bahamowrang);

instance_create_layer(0, 0, "Instances", obj_RoomTransition);
obj_RoomTransition.target_room = rm_Air0;	