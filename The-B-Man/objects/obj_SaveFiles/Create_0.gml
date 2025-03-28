
scr_load_game();

if (global.fullscreen) {
	window_set_fullscreen(true);
} else {
	window_set_fullscreen(false);
}

alpha = 0;

alpha_val = 0.01;

alpha_mode = false;

start_text = "PRESS [SPACE] TO BEGIN NEW GAME";

window_set_cursor(cr_none);
cursor_sprite = spr_cursor;