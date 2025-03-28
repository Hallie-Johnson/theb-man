/// @description Insert description here
// You can write your code in this editor

instance_destroy(obj_Clue_Folder_Wrang);
	instance_destroy(obj_Clue_Folder_Mobile);
	instance_destroy(obj_Clue_Folder_Wing);
	
	instance_create_layer(480, 540, "Instances", obj_Clue_Folder_Wrang);
	instance_create_layer(960, 540, "Instances", obj_Clue_Folder_Mobile);
	instance_create_layer(1440, 540, "Instances", obj_Clue_Folder_Wing);
	
	obj_clue_manager.selected_folder = 0;
	obj_clue_manager.selected_clue = 0;
	
	//layer_set_visible("Question", false);
	layer_set_visible("Display", false);