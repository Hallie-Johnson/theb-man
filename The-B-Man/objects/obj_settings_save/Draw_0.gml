/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_color(c_white);
draw_set_halign(fa_center);

if (current_save == global.timestamp) {
	draw_text(x, y - 18, "Save Game");
} else {
	draw_text(x, y - 18, "Saved!");
}

draw_set_halign(fa_left);