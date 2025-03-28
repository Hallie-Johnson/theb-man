/// @description Insert description here
// You can write your code in this editor

// Get the object's dimensions considering the sprite origin
obj_left = x - sprite_xoffset;
obj_right = x - sprite_xoffset + sprite_width;
obj_top = y - sprite_yoffset;
obj_bottom = y - sprite_yoffset + sprite_height;

// Check if the mouse is over the object
if (mouse_x >= obj_left && mouse_x <= obj_right && mouse_y >= obj_top && mouse_y <= obj_bottom) {
    sprite_index = spr_play_button_hover;
}
else {
	sprite_index = spr_play_button_idle;
}