/// @description Insert description here
// You can write your code in this editor

// Get the object's dimensions considering the sprite origin
obj_left = x - sprite_xoffset;
obj_right = x - sprite_xoffset + sprite_width;
obj_top = y - sprite_yoffset;
obj_bottom = y - sprite_yoffset + sprite_height;

// Check if the mouse is over the object
if (mouse_x >= obj_left && mouse_x <= obj_right && mouse_y >= obj_top && mouse_y <= obj_bottom) {
    image_xscale += 0.25; // Increase x scale by 0.01
    image_yscale += 0.25; // Increase y scale by 0.01
}
else {
	image_xscale -= 0.25; // Decrease x scale by 0.01
    image_yscale -= 0.25; // Decrease y scale by 0.01
}


if ((image_xscale > max_size and image_yscale > max_size) or room == go_to_room) {
    image_xscale = max_size;
	image_yscale = max_size;
}

if (image_xscale < min_size and image_yscale < min_size) {
    image_xscale = min_size;
	image_yscale = min_size;
}