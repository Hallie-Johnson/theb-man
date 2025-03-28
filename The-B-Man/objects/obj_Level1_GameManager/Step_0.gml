/// @description Insert description here
// You can write your code in this editor

// If you beat wave 1
if (Battle_Bahaman.enemy_ctr == 1 && wave == 1) {
	
	obj_BattleCamera.track_player = true;
	Battle_Bahaman.enemy_ctr = 0;
	wave++;
	
	obj_BattleGUI.activate_go = true;
	
} 

// If you beat wave 2
else if (Battle_Bahaman.enemy_ctr == 4 && wave == 2) {
	
	obj_BattleCamera.track_player = true;
	Battle_Bahaman.enemy_ctr = 0;
	wave++;
	
	StartNewWave();
	
}

// If you beat wave 3
else if (Battle_Bahaman.enemy_ctr == 7 && wave == 3) {
	
	//show_debug_message("You win");
	room_goto(rm_IconHome);
	
}

else {
	
	//obj_BattleCamera.track_player = false;
	
}



