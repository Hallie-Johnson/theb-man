/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
draw_set_font(fnt_default_small);
draw_set_alpha(0.25);
draw_set_halign(fa_left);

draw_text(10, 10, "THE B-MAN v.1.0");


draw_set_alpha(1);
//draw_sprite_ext(spr_mission_panel, 0, display_get_gui_width()/2, display_get_gui_height()/2, 5, 5, 0, c_white, 1);

draw_set_font(fnt_default);
draw_set_halign(fa_center);

if (global.timestamp == "N/A") {
	draw_text(x, y, "NEW GAME");
} else {
	draw_text(x, y - 100, "CONTINUE GAME\n\n" + global.timestamp + "\n\nPRESS [DELETE] TO DELETE SAVE");
	start_text = "PRESS [SPACE] TO CONTINUE GAME";
}

draw_text_color(x, y + 155, start_text, c_black, c_black, c_black, c_black, alpha);
draw_text_color(x, y + 150, start_text, c_white, c_white, c_white, c_white, alpha);
