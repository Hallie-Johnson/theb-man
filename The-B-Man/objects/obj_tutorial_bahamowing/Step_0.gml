/// @description Insert description here
// You can write your code in this editor

if (!global.paused) {

	if (tutorial_step == 1) {
		if alarm[0] == -1
		{
			alarm[0] = room_speed * 5;
		}	
	}

	if (tutorial_step == 2 && keyboard_check(ord("D")))
		tutorial_step = 3;
	if (tutorial_step == 3 && keyboard_check(ord("A")))
		tutorial_step = 4;
	if (tutorial_step == 4 && keyboard_check(ord("W")))
		tutorial_step = 5;
	if (tutorial_step == 5 && keyboard_check(ord("S")))
		tutorial_step = 6;
	if (tutorial_step == 6 && (keyboard_check(vk_shift) && (keyboard_check(ord("A")) || keyboard_check(ord("D")))))
		tutorial_step = 7;
	if (tutorial_step == 7)
		if alarm[0] == -1
		{
			alarm[0] = room_speed * 7;
		}
	if (tutorial_step == 8 && (keyboard_check(vk_space)))
		//tutorial_step = 9;
		tutorial_step = 11;
	if (tutorial_step == 9) 
		if alarm[0] == -1
		{
			alarm[0] = room_speed * 7;
		}
	if (tutorial_step == 10) 
		if alarm[0] == -1
		{
			alarm[0] = room_speed * 7;
		}
	if (tutorial_step == 11) 
		if alarm[0] == -1
		{
			alarm[0] = room_speed * 7;
		}
	if (tutorial_step == 12 && instance_number(obj_cost_flighter) == 0) 
		if alarm[0] == -1
		{
			alarm[0] = room_speed * 4;
		}
	if (tutorial_step == 13) 
		if alarm[0] == -1
		{
			alarm[0] = room_speed * 7;
		}
	if (tutorial_step == 14) 
		if alarm[0] == -1
		{
			alarm[0] = room_speed * 7;
		}
	if (tutorial_step == 15) 
		if alarm[0] == -1
		{
			alarm[0] = room_speed * 7;
		}

	if (tutorial_step == 16 && instance_number(obj_cost_flighter) == 0) {
		obj_bahamowing.draw_mission_complete = true;	
		global.tutorial_flying_complete = true;
	}


}