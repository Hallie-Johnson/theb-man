/// @description Insert description here
// You can write your code in this editor

// Set the drawing color
draw_set_color(#181818);

draw_set_alpha(1);

// Get GUI dimensions
var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();

// Draw the top rectangle filling downwards
draw_rectangle(0, 0, gui_width, draw_height_top, false);

// Draw the bottom rectangle filling upwards
draw_rectangle(0, gui_height - draw_height_bottom, gui_width, gui_height, false);

// Draw the spinning sprite in the center when rectangles are fully drawn
if (draw_height_top >= gui_height / 2) {
    draw_sprite_ext(spr_icon_bahamowrang, 0, gui_width / 2, gui_height / 2, 5, 5, rotation, c_white, 1);
}
