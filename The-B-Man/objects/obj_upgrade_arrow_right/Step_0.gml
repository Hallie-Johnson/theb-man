/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_upgrade_manager)) {
	if (obj_upgrade_manager.current_upgrade_index == 3) {
		visible = false;
	} else {
		visible = true;	
	}
}