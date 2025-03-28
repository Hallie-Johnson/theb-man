/// @description Insert description here
// You can write your code in this editor

if (object_get_name(object_index) == "obj_clown_ta_abheek"){
	
if (state == "linked") {
	time += time_speed;
	y = initial_y + sin(time) * height;
	if (obj_bahaman.juul_hp <= 700) state = "falling";
} else if (state == "falling") {
	sprite_index = spr_clownTA_abheek_restore;
	y += 0.5;
	if (y >= 192) state = "shocked";
} else {
	if (obj_bahaman.x > x) {
		image_xscale = -1;
	} else if (obj_bahaman.x < x) {
		image_xscale = 1;
	}
	
	sprite_index = spr_TA_abheek_shocked;	
	y = 192;
}

}

if (object_get_name(object_index) == "obj_clown_ta_hallie"){
	
if (state == "linked") {
	time += time_speed;
	y = initial_y + sin(time) * height;
	if (obj_bahaman.juul_hp <= 400) state = "falling";
} else if (state == "falling") {
	sprite_index = spr_clownTA_hallie_restore;
	y += 0.5;
	if (y >= 192) state = "shocked";
} else {
	if (obj_bahaman.x > x) {
		image_xscale = -1;
	} else if (obj_bahaman.x < x) {
		image_xscale = 1;
	}
	
	sprite_index = spr_TA_hallie_shocked;	
	y = 192;
}

}

if (object_get_name(object_index) == "obj_clown_ta_lily"){
	
if (state == "linked") {
	time += time_speed;
	y = initial_y + sin(time) * height;
	if (obj_bahaman.juul_hp <= 100) state = "falling";
} else if (state == "falling") {
	sprite_index = spr_clownTA_lily_restore;
	y += 0.5;
	if (y >= 192) state = "shocked";
} else {
	if (obj_bahaman.x > x) {
		image_xscale = -1;
	} else if (obj_bahaman.x < x) {
		image_xscale = 1;
	}
	
	sprite_index = spr_TA_lily_shocked;	
	y = 192;
}

}