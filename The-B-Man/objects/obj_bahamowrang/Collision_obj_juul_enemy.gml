/// @description Insert description here
// You can write your code in this editor

if (collison_count == 0) {
	if (variable_global_exists("upgrade_wrang_damage")) {
		other.hp -= (300 * (global.upgrade_wrang_damage/2));
	} else {
		other.hp -= 750;
	}
}

collison_count++;