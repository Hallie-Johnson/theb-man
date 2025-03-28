/// @description Insert description here
// You can write your code in this editor

if (!global.paused) {

if (tutorial_step == 2 and keyboard_check(ord("D"))) {
	tutorial_step = 3;	
}

if (tutorial_step == 3 and keyboard_check(ord("A"))) {
	tutorial_step = 4;	
}

if (tutorial_step == 4 and keyboard_check(ord("W"))) {
	tutorial_step = 5;	
}

if (tutorial_step == 5 and ((keyboard_check(ord("A")) || keyboard_check(ord("D"))) and keyboard_check(vk_shift))) {
	tutorial_step = 6;	
}

if (tutorial_step == 6 and mouse_check_button_pressed(mb_left)) {
	tutorial_step = 7;	
}

if (tutorial_step == 7 and mouse_check_button_pressed(mb_left)) {
	if alarm[0] == -1
	{
		alarm[0] = room_speed * 7;
	}
}

if (tutorial_step == 8 and mouse_check_button_pressed(mb_right)) {
	tutorial_step = 9;
}

if (tutorial_step == 9) {
	if alarm[0] == -1
	{
		alarm[0] = room_speed * 7;
	}
}

if (tutorial_step == 10) {
	if alarm[0] == -1
	{
		alarm[0] = room_speed * 7;
	}
}

if (tutorial_step == 11 && !instance_exists(obj_juul_enemy_fighter)) {
	if alarm[0] == -1
	{
		alarm[0] = room_speed * 3;
	}
}

if (tutorial_step == 12 && !instance_exists(obj_juul_enemy_ranged)) {
	if alarm[0] == -1
	{
		alarm[0] = room_speed * 3;
	}
}

if (tutorial_step == 13 && !instance_exists(obj_juul_enemy_tank)) {
	if alarm[0] == -1
	{
		alarm[0] = room_speed * 2;
	}
}


if (tutorial_step == 14) {
	if alarm[0] == -1
	{
		alarm[0] = room_speed * 5;
	}
}

if (tutorial_step == 16 && !instance_exists(obj_juul_enemy)) {
	tutorial_step = 17;	
}

if (tutorial_step == 15) {
	if alarm[0] == -1
	{
		alarm[0] = room_speed * 5;
	}
}

}