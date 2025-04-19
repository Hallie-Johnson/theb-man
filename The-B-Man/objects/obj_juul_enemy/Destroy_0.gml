/// @description Insert description here
// You can write your code in this editor

if (variable_global_exists("sound_effects")) {
	if (global.sound_effects) audio_play_sound(snd_sfx_bahamowing_enemy_death, 1, false);
}