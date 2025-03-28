/// @description Insert description here
// You can write your code in this editor

if (room == rm_Air1) {
	global.flying_1_clues++;	
} else if (room = rm_Air2) {
	global.flying_2_clues++;	
} else if (room = rm_Air3) {
	global.flying_3_clues++;	
}

if (global.sound_effects) audio_play_sound(snd_sfx_clue_collected, 1, false);

instance_destroy()