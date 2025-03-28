/// @description Insert description here
// You can write your code in this editor

if (global.paused == false) {
	global.paused = true;
} else {
	global.paused = false;
}

show_debug_message(string(global.paused));
