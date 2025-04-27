/// @description Insert description here
// You can write your code in this editor

if (alpha == 0) {
	alpha_val = 0.01;	
}

if (alpha == 1) {
	alpha_val = -0.01;	
}

alpha += alpha_val;


if (global.percentage == 100) {
	sprite_index = spr_save_2;
	save = scr_load_game();
	if (save != undefined) {
		global.percentage = calculate_completion_percentage(save);
	} else {
		global.percentage = 0;	
	}
} 

if (global.timestamp == "N/A") {
	sprite_index = spr_empty;
	global.percentage = 0;
}