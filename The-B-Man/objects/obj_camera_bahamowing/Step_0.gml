/// @description Insert description here
// You can write your code in this editor

if (camera_setting = 1) {
	if (follow != noone) {
		xTo = follow.x;
		yTo = follow.y;
	}

	if (obj_bahamowing.right == true) {
		x += (xTo - x) / 5 + 10;
	} else {
		x += (xTo - x) / 5 - 10;
	}
	y += (yTo - y) / 5;

	camera_set_view_pos(view_camera[0], x - (camWidth * 0.5), y - (camHeight * 0.5));
}

var layer1 = layer_get_id("Backgrounds_3");
var layer2 = layer_get_id("Backgrounds_2");
var layer3 = layer_get_id("Backgrounds_1");

layer_x(layer1, lerp(0, camera_get_view_x(view_camera[0]), 0.5));
layer_x(layer2, lerp(0, camera_get_view_x(view_camera[0]), 0.6));
layer_x(layer3, lerp(0, camera_get_view_x(view_camera[0]), 0.8));