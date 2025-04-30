/// @description Insert description here
// You can write your code in this editor

if (global.debug) {
	debug = !debug;
	keyboard_string = "";
}

if (keyboard_check(ord("H")) && keyboard_check(ord("J"))) {
	show_debug_message("here");
	global.debug = !global.debug;
}