/// @description Insert description here
// You can write your code in this editor

draw_self();

//var save = scr_load_game();

//global.percentage = calculate_completion_percentage(save);

draw_set_halign(fa_center);

draw_set_color(c_black);
draw_text(x, y + 5, string(global.percentage) + "% COMPLETE");

if (global.percentage == 100) draw_set_color(#FFC100); 
else draw_set_color(c_white);
draw_text(x, y, string(global.percentage) + "% COMPLETE");



draw_set_color(c_white);