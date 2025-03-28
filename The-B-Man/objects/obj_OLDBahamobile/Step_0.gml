/// @description Insert description here
// You can write your code in this editor

if (draw_mission_complete) {
	if (rectangle_width > room_width) {
		rectangle_width = room_width;
	} else {
		rectangle_width = rectangle_width + rectangle_speed;
	}
}