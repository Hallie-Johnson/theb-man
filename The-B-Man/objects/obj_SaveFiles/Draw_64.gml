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

//draw_text(100, 100, string(percentage));

if (global.timestamp == "N/A") {
	draw_text(x, y, "NO SAVE FILE FOUND");
	
	start_text = "PRESS [SPACE] TO CREATE A NEW GAME";
	
} else {
	draw_set_color(c_black);
	draw_text(x, y - 80, "CONTINUE GAME  |  " + string(global.percentage) + "% COMPLETED \n\n" + global.timestamp + "\n\nPRESS [DELETE] TO DELETE SAVE");
	
	draw_set_color(c_white);
	draw_text(x, y - 85, "CONTINUE GAME  |  " + string(global.percentage) + "% COMPLETED \n\n" + global.timestamp + "\n\nPRESS [DELETE] TO DELETE SAVE");
	
	start_text = "PRESS [SPACE] TO CONTINUE GAME";
}

draw_text_color(x, y + 355, start_text, c_black, c_black, c_black, c_black, alpha);
draw_text_color(x, y + 350, start_text, c_white, c_white, c_white, c_white, alpha);
