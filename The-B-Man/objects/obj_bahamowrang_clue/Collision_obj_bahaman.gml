/// @description Insert description here
// You can write your code in this editor

if (room == rm_Battle1) {
	global.battle_1_clues++;	
} else if (room = rm_Battle2) {
	global.battle_2_clues++;	
} else if (room = rm_Battle3) {
	global.battle_3_clues++;	
}

if (global.sound_effects) audio_play_sound(snd_sfx_clue_collected, 1, false);


instance_destroy()