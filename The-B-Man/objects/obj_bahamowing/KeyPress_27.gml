/// @description Insert description here
// You can write your code in this editor


if (global.paused == false) {
	global.paused = true;
} else {
	global.paused = false;
}

if (global.paused) {
	disable_movement = true;	
} else {
	disable_movement = false;	
}