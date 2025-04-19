/// @description Insert description here
// You can write your code in this editor

//show_debug_message(string(x) + " " + string(x) == "1503.00");

if (instance_exists(obj_mech)) {
	if (obj_mech.juul_hp == 900) {
		x = 495
		y = 522
	}
	
	if (obj_mech.juul_hp == 600) {
		x = lerp(x, 1503, 0.1) //1503
		y = lerp(y, 681, 0.1) // 681
	}
	
	if (obj_mech.juul_hp == 300) {
		x = lerp(x, 1103, 0.1) //1103
		y = lerp(y, 906, 0.1) // 906
	}
}


if (obj_mech.juul_hp == 600 && x > 1500) {
	cinematic_timer--;
	obj_jester_weapon.visible = true;
	visible = true;
} else if (obj_mech.juul_hp == 300 && x < 1105) {
	cinematic_timer--;
	obj_jester_weapon.visible = true;
	visible = true;
} else if (obj_mech.juul_hp == 900 && x == 495) {
	cinematic_timer--;
	obj_jester_weapon.visible = true;
	visible = true;
} else {
	obj_jester_weapon.visible = false;
	visible = false;
}

if (cinematic_timer <= 0) {
	obj_mech.activate_cinema = false;
	obj_camera_mech.follow = obj_mech;
}
