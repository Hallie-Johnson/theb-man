/// @description Insert description here
// You can write your code in this editor

//global.clues++;

if (room == rm_Road1) {
	global.driving_1_clues++;
	clue_ctr = global.driving_1_clues;
} else if (room == rm_Road2) {
	global.driving_2_clues++;
	clue_ctr = global.driving_2_clues;
} else if (room == rm_Road3) {
	global.driving_3_clues++;
	clue_ctr = global.driving_3_clues;
}

if (global.sound_effects) audio_play_sound(snd_sfx_clue_collected, 1, false);

instance_destroy(other);