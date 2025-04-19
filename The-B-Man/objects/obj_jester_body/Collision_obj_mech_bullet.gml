/// @description Insert description here
// You can write your code in this editor

if (instance_number(obj_juul_enemy) == 0 && instance_exists(obj_mech_spawner1)) {
	cinematic_timer = cinematic_timer_max;
	if (instance_exists(obj_mech)) {
		obj_mech.juul_hp = 600;
		obj_mech.activate_cinema = true;
		obj_mech.effect_juul_hit = 0.75;
	}
	if (instance_exists(obj_camera_mech)) obj_camera_mech.follow = obj_jester_body;
}

if (instance_number(obj_juul_enemy) == 0 && instance_exists(obj_mech_spawner2)) {
	cinematic_timer = cinematic_timer_max;
	if (instance_exists(obj_mech)) {
		obj_mech.juul_hp = 300;
		obj_mech.activate_cinema = true;
		obj_mech.effect_juul_hit = 0.75;
	}
	if (instance_exists(obj_camera_mech)) obj_camera_mech.follow = obj_jester_body;
}

if (instance_number(obj_juul_enemy) == 0 && instance_exists(obj_mech_spawner3)) {
	cinematic_timer = cinematic_timer_max;
	if (instance_exists(obj_mech)) {
		obj_mech.juul_hp = 0;
		obj_mech.activate_cinema = true;
		obj_mech.effect_juul_hit = 0.75;
	}
	if (instance_exists(obj_camera_mech)) obj_camera_mech.follow = obj_jester_body;
}



instance_destroy(other);