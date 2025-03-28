/// @description Insert description here
// You can write your code in this editor

if (!global.tutorial_battle_complete || !global.tutorial_driving_complete || !global.tutorial_flying_complete || !global.tutorial_decrypter_complete) {
	draw_sprite_ext(spr_tutorial_warning, 0, display_get_gui_width()/2, display_get_gui_height()/2, 5, 5, 0, c_white, 1);

	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_text_color(display_get_gui_width()/2, display_get_gui_height()/2 - 30, "(!) ACCESS DENIED (!)\nERROR: ALL TUTORIALS INCOMPLETE", c_white, c_white, c_white, c_white, 1);
}


//draw_text(100, 100, "Battle: " + string(global.tutorial_battle_complete) + "\nDriving: " + string(global.tutorial_driving_complete) + "\nFlying: " + string(global.tutorial_flying_complete) + "\nDecrypter: " + string(global.tutorial_decrypter_complete));


