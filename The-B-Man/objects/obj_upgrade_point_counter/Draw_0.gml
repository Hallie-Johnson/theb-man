/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_halign(fa_left);

draw_set_color(c_black);
draw_text(x + sprite_width/2 + 100, y + sprite_width/2 - 10, "B-XP: " + string(global.upgrade_points));

draw_set_color(c_white);
draw_text(x + sprite_width/2 + 100, y + sprite_width/2 - 15, "B-XP: " + string(global.upgrade_points));
