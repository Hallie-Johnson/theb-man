/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_mech)) {
	obj_mech.hp += 500;
	instance_destroy();
}