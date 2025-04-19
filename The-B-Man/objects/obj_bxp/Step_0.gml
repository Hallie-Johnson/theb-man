/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y + 16, obj_block)) {
	if (hit_ground) {
		initial_y = y;	
	}
	hit_ground = false;
} else {
	if (hit_ground) y += 5;	
}


if (hit_ground == false) {
	instance_destroy();
	time += 0.1;
	y = initial_y + sin(time) * 5;	
}