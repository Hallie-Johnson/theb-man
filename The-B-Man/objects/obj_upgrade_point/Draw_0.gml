/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_halign(fa_left);
draw_set_color(c_white)
	

draw_text(x + 100, y + 30, string(global.upgrade_points));

draw_text(x - 75, y - 390, "DAMAGE LV. " + string(global.upgrade_damage_level));
draw_text(x - 75, y - 235, "BAHAMORANG LV. " + string(global.upgrade_bahamorangs_level));
draw_text(x - 75, y - 80, "HEALTH LV. " + string(global.upgrade_health_level));


//global.upgrade_damage_level = clamp(global.upgrade_damage_level, 0, 3);
//global.upgrade_bahamorangs_level = clamp(global.upgrade_bahamorangs_level, 0, 3);
//global.upgrade_health_level = clamp(global.upgrade_health_level, 0, 3);
//global.upgrade_points = clamp(global.upgrade_points, 0, 9);

//draw_rectangle(255, 320, 295, 360, false);
if (mouse_x > 255 && mouse_x < 295 && mouse_y > 320 && mouse_y < 360) {
	if (mouse_check_button_pressed(mb_left)) {
		if (global.upgrade_damage_level <= 0) {
			global.upgrade_damage_level = 0;
		} else {
			global.upgrade_damage_level--;
			global.upgrade_points++;
		}
	}
}
	
//draw_rectangle(520, 320, 560, 360, false);
if (mouse_x > 520 && mouse_x < 560 && mouse_y > 320 && mouse_y < 360) {
	if (mouse_check_button_pressed(mb_left)) {
		if (global.upgrade_damage_level >= 3) {
			global.upgrade_damage_level = 3;
		} else {
			if (global.upgrade_points != 0) {
				global.upgrade_damage_level++;
				global.upgrade_points--;
			}
		}
	}
}

//draw_rectangle(255, 473, 295, 513, false);
if (mouse_x > 255 && mouse_x < 295 && mouse_y > 473 && mouse_y < 513) {
	if (mouse_check_button_pressed(mb_left)) {
		if (global.upgrade_bahamorangs_level <= 0) {
			global.upgrade_bahamorangs_level = 0;
		} else {
			global.upgrade_bahamorangs_level--;
			global.upgrade_points++;
		}
	}
}

//draw_rectangle(520, 473, 560, 513, false);
if (mouse_x > 520 && mouse_x < 560 && mouse_y > 473 && mouse_y < 513) {
	if (mouse_check_button_pressed(mb_left)) {
		if (global.upgrade_bahamorangs_level >= 3) {
			global.upgrade_bahamorangs_level = 3;
		} else {
			if (global.upgrade_points != 0) {
				global.upgrade_bahamorangs_level++;
				global.upgrade_points--;
			}
		}
	}
}

//draw_rectangle(255, 626, 295, 666, false);
if (mouse_x > 255 && mouse_x < 295 && mouse_y > 626 && mouse_y < 666) {
	if (mouse_check_button_pressed(mb_left)) {
		if (global.upgrade_health_level <= 0) {
			global.upgrade_health_level = 0;
		} else {
			global.upgrade_health_level--;
			global.upgrade_points++;
		}
	}
}

//draw_rectangle(520, 626, 560, 666, false);
if (mouse_x > 520 && mouse_x < 560 && mouse_y > 626 && mouse_y < 666) {
	if (mouse_check_button_pressed(mb_left)) {
		if (global.upgrade_health_level >= 3) {
			global.upgrade_health_level = 3;
		} else {
			if (global.upgrade_points != 0) {
				global.upgrade_health_level++;
				global.upgrade_points--;
			}
		}
	}
}

draw_sprite_ext(spr_UpgradeCell, global.upgrade_damage_level, 254, 318, 2.75, 2.75, 0, c_white, 1);
draw_sprite_ext(spr_UpgradeCell, global.upgrade_bahamorangs_level, 254, 472, 2.75, 2.75, 0, c_white, 1);
draw_sprite_ext(spr_UpgradeCell, global.upgrade_health_level, 254, 626, 2.75, 2.75, 0, c_white, 1);

if (global.upgrade_damage_level == 1) {
	global.upgrade_damage = 25;
} else if (global.upgrade_damage_level == 2) {
	global.upgrade_damage = 50;
} else if (global.upgrade_damage_level == 3) {
	global.upgrade_damage = 75;
} else {
	global.upgrade_damage = 0;
}

if (global.upgrade_bahamorangs_level == 1) {
	global.upgrade_bahamorangs = 1;
} else if (global.upgrade_bahamorangs_level == 2) {
	global.upgrade_bahamorangs = 2;
} else if (global.upgrade_bahamorangs_level == 3) {
	global.upgrade_bahamorangs = 3;
} else {
	global.upgrade_damage = 0;
}

if (global.upgrade_health_level == 1) {
	global.upgrade_health = 250;
} else if (global.upgrade_health_level == 2) {
	global.upgrade_health = 500;
} else if (global.upgrade_health_level == 3) {
	global.upgrade_health = 750;
} else {
	global.upgrade_health = 0;
}