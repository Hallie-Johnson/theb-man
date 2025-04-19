/// @description Insert description here
// You can write your code in this editor

if (collison_count == 0) {
	if (variable_global_exists("sound_effects")) {
		other.hp -= (350 + (global.upgrade_wrang_damage * 100));
		if (global.sound_effects) audio_play_sound(snd_sfx_bahamowrang_wrang_hit, 1, false);
	}
}

collison_count++;