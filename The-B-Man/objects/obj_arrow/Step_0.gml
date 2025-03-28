/// @description Insert description here
// You can write your code in this editor

// Get the position of Battle_Bahaman
var bahaman_x = obj_Battle_Bahaman.x;
var bahaman_y = obj_Battle_Bahaman.y;

// Set the position of obj_arrow to be the same as Battle_Bahaman
x = bahaman_x;
y = bahaman_y;

// Calculate the direction from obj_arrow to the mouse cursor
var direction1 = point_direction(x, y, mouse_x, mouse_y);

// Rotate obj_arrow to face the mouse cursor
image_angle = direction1;

image_alpha = clamp(image_alpha, 0, 0.3);

if (obj_Battle_Bahaman.attack_type == 2 || obj_Battle_Bahaman.intro == true) {
	image_alpha -= 0.1;
} else {
	image_alpha += 0.05;
}