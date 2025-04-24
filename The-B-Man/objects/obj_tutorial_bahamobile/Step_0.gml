/// @description Insert description here
// You can write your code in this editor

if (!global.paused) {

if (tutorial_step == 1) {
	if alarm[0] == -1
	{
		alarm[0] = room_speed * 5;
	}	
}

if (tutorial_step == 2 && keyboard_check(ord("W"))) {
	tutorial_step = 3;	
}

if (tutorial_step == 3 && keyboard_check(ord("S"))) {
	tutorial_step = 4;
}

if (tutorial_step == 4 && keyboard_check(vk_shift)) {
	tutorial_step = 5;
}

if (tutorial_step == 5) {
	if alarm[0] == -1
	{
		alarm[0] = room_speed * 4;
	}	
}

if (tutorial_step == 6) {
	if alarm[0] == -1
	{
		alarm[0] = room_speed * 4;
	}	
}

if (tutorial_step == 7) {
	if alarm[0] == -1
	{
		alarm[0] = room_speed * 7;
	}	
}

if (tutorial_step == 8) {
	if alarm[0] == -1
	{
		alarm[0] = room_speed * 7;
	}	
}

if (tutorial_step == 9) {
	if alarm[0] == -1
	{
		alarm[0] = room_speed * 8;
	}	
}

if (tutorial_step == 10) {
	if alarm[0] == -1
	{
		alarm[0] = room_speed * 8;
	}	
}

if (tutorial_step == 11) {
	if alarm[0] == -1
	{
		alarm[0] = room_speed * 8;
	}	
}

if (tutorial_step == 12) {
	if alarm[0] == -1
	{
		alarm[0] = room_speed * 8;
	}	
}

if (tutorial_step == 13) {
	if alarm[0] == -1
	{
		alarm[0] = room_speed * 5;
	}	
}

if (tutorial_step == 14) {
	if alarm[0] == -1
	{
		alarm[0] = room_speed * 8;
	}	
}

}


if (global.tutorial_driving_complete == false && obj_bahamobile.draw_mission_complete == true) {
	global.tutorial_driving_complete = true;	
}