/// @description Insert description here
// You can write your code in this editor


// Track Player
if (camera_setting = 1) {
	if (follow != noone) {
		xTo = follow.x;
		yTo = follow.y;
	}

	x += (xTo - x) / 15;
	y += (yTo - y) / 15;

	camera_set_view_pos(view_camera[0], x - (camWidth * 0.5), y - (camHeight * 0.5));
}