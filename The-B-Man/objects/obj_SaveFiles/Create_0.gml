

save = scr_load_game();
//show_message(string(save));

if (save != undefined) {
	global.percentage = calculate_completion_percentage(save);
} else {
	global.percentage = 0;	
}

/*
if (global.fullscreen) {
	window_set_fullscreen(true);
} else {
	window_set_fullscreen(false);
} */

if (global.percentage == 100) {
	sprite_index = spr_save_2;	
} 

if (global.timestamp == "N/A") {
	sprite_index = spr_empty;	
	global.percentage = 0;
}


alpha = 0;

alpha_val = 0.01;

alpha_mode = false;

start_text = "PRESS [SPACE] TO BEGIN NEW GAME";

window_set_cursor(cr_none);
cursor_sprite = spr_cursor;
