/// @description Insert description here
// You can write your code in this editor

if (!place_meeting(x, y, Battle_Bahaman)) {
    obj_BattleCamera.track_player = true;
	
	counter = 0;
	in_battle = false;
	
	
} else {
	obj_BattleCamera.track_player = false;

	obj_BattleCamera.x = x
	obj_BattleCamera.y = y
	
	counter++;

}