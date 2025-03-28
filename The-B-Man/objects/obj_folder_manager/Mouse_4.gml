/// @description Insert description here
// You can write your code in this editor

if (instance_exists(other_1) && instance_exists(other_2)) {
	instance_destroy(other_1);
	instance_destroy(other_2);
	//layer_set_visible("Question", true);
	image_alpha = 0.25;
	obj_clue_manager.selected_folder = folder_number;
}
