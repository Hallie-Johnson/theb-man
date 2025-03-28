/// @description Insert description here
// You can write your code in this editor

clickable = (global.battle_level1_complete && global.battle_level2_complete && global.battle_level3_complete) 
	&& (global.driving_level1_complete && global.driving_level2_complete && global.driving_level3_complete)
	&& (global.flying_level1_complete && global.flying_level2_complete && global.flying_level3_complete);
	
if (clickable == false) {
	visible = false;	
} else {
	visible = true;	
}