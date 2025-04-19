/// @description Insert description here
// You can write your code in this editor

y_val -= 1;

draw_set_font(fnt_default);
draw_set_halign(fa_left);
draw_set_color(c_white);

draw_sprite_ext(spr_effect_trap_hit, 0, 0, 0, 5, 5, 0, c_black, 0.75);

draw_text(100, y_val, credits_str);


draw_set_halign(fa_right);

var level = string_char_at(room_get_name(room), string_length(room_get_name(room)))

draw_set_color(c_black);
//draw_text(display_get_gui_width() - 100, 755, bonus_str);
draw_text(display_get_gui_width() - 100, 55, "This is the first protoype of THE B-MAN. | LEVEL " + level + "/3");

draw_set_color(c_white);
//draw_text(display_get_gui_width() - 100, 750, bonus_str);
draw_text_color(display_get_gui_width() - 100, 750, bonus_str, c_white, c_white, c_white, c_white, 0.25);
draw_text(display_get_gui_width() - 100, 50, "This is the first protoype of THE B-MAN. | LEVEL " + level + "/3");