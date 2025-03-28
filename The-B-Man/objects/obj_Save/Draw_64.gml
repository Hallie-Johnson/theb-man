/// @description Insert description here
// You can write your code in this editor

// Draw the sprite at a fixed GUI position (e.g., bottom-right corner)
// You can animate by using image_index and image_speed
var gui_x = display_get_gui_width() - sprite_get_width(sprite_index);
var gui_y = display_get_gui_height() - sprite_get_height(sprite_index);

// Draw the sprite using draw_sprite_ext (or draw_sprite if you don't need extra parameters)
if (room == rm_SaveFiles || room == rm_IconSettings) draw_sprite_ext(sprite_index, image_index, gui_x, gui_y, 5, 5, 0, c_white, image_alpha);
