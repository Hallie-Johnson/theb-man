/// @description Insert description here
// You can write your code in this editor

// Calculate the distance to the mouse
var distance_to_mouse = point_distance(x, y, mouse_x, mouse_y);

// Smoothly move toward the mouse
x = lerp(x, mouse_x, 0.1) + 1;
y = lerp(y, mouse_y, 0.1);


if (place_meeting(x, y, obj_cost_flighter)) {
	image_index = 0;
} else {
	image_index = 1;
}