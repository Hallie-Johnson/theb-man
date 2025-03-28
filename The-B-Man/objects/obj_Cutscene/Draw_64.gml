/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_left);

if (alpha_text_fade) {
	alpha_text -= 0.005;	
}

if (room != rm_Cutscene_6) draw_text_color(50, 50, "PRESS [TAB] TO SKIP", c_dkgray, c_dkgray, c_dkgray, c_dkgray, alpha_text);