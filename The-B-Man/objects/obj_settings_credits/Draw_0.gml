/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_color(c_white);

if (!global.battle_level5_complete) draw_set_color(c_dkgray)

draw_set_halign(fa_center);

draw_text(x, y - 18, "Credits");

draw_set_halign(fa_left);