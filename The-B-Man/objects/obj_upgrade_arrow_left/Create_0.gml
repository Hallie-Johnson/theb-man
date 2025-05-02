/// @description Insert description here
// You can write your code in this editor

image_alpha = 0.5;

if (instance_exists(obj_upgrade_manager)) {
	if (obj_upgrade_manager.current_upgrade_index == 0) {
		visible = false;
	} else {
		visible = true;	
	}
}


clicked = false;