/// @description Insert description here
// You can write your code in this editor

if (debug) {
    draw_set_alpha(0.5);
    draw_set_color(c_black);
    draw_rectangle(0, 0, display_get_width(), 200, false);
    draw_set_alpha(1);
    draw_set_color(c_white);
	draw_set_halign(fa_left);
    draw_text(10, 10, input_text);
	draw_text(10, 110, "[Debug Console] " + output_text);
}