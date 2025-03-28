/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_color(c_white);
draw_set_halign(fa_center);

if (global.sound_music) {
	draw_text(x, y - 18, "Music: ON");
} else {
	draw_text(x, y - 18, "Music: OFF");
}

draw_set_halign(fa_left);