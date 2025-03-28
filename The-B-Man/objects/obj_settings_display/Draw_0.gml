/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_color(c_white);
draw_set_halign(fa_center);

if (window_get_fullscreen()) {
	draw_text(x, y - 18, "Display: FULLSCREEN");
} else {
	draw_text(x, y - 18, "Display: WINDOWED");
}

draw_set_halign(fa_left);