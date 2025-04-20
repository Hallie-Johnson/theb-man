/// @description Insert description here
// You can write your code in this editor


if (mouse_check_button_pressed(mb_left) && !global.paused && obj_mech.draw_mission_complete == false &&  obj_mech.draw_mission_failed == false) {
    shake_timer = game_get_speed(gamespeed_fps)/4; // 1 second at 60 FPS
}



// Track Player
if (camera_setting = 1) {
	if (follow != noone) {
		xTo = follow.x;
		yTo = follow.y;
	}

	x += (xTo - x) / 1;
	y += (yTo - y) / 1 - 10;

	if (instance_exists(obj_mech)) {
		if (obj_mech.sprint_move && obj_mech.stam > (obj_mech.max_stam / 4) && !global.paused && obj_mech.draw_mission_complete == false &&  obj_mech.draw_mission_failed == false) {
			// Zoom out
			camWidth = lerp(camWidth, 668, 0.1);
			camHeight = lerp(camHeight, 384, 0.1);
		} else {
			// Zoom back in
			camWidth = lerp(camWidth, 501, 0.05);
			camHeight = lerp(camHeight, 288, 0.05);
		}
	}

	camera_set_view_size(view_camera[0], camWidth, camHeight);
	//camera_set_view_pos(view_camera[0], x - (camWidth * 0.5), y - (camHeight * 0.5));
	
	var shake_x = 0;
	var shake_y = 0;

	if (shake_timer > 0) {
	    shake_x = random_range(-shake_magnitude, shake_magnitude);
	    shake_y = random_range(-shake_magnitude, shake_magnitude);
	    shake_timer -= 1;
	}

	camera_set_view_pos(view_camera[0], (x - camWidth * 0.5) + shake_x, (y - camHeight * 0.5) + shake_y);


}

