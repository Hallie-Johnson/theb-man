/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A"))) {
	if (index > 0) index--;
} else if (keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D"))) {
	if (index < 4) index ++;	
} 

image_index = index;

if (global.tutorial_decrypter_complete == false && index == 4) {
	global.tutorial_decrypter_complete = true;	
}