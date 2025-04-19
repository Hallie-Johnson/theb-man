/// @description Insert description here
// You can write your code in this editor

if (instance_number(obj_juul_enemy) == 0 && instance_exists(obj_mech_spawner1)) {
	if (instance_exists(obj_mech)) obj_mech.juul_hp = 600;
}

if (instance_number(obj_juul_enemy) == 0 && instance_exists(obj_mech_spawner2)) {
	if (instance_exists(obj_mech)) obj_mech.juul_hp = 300;
}

instance_destroy(other);