/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(vk_control)) {
	
	if (keyboard_check(vk_right)) {
		room_goto_next();
	}
	
	else if (keyboard_check(vk_left)) {
		room_goto_previous();	
	}
	
}