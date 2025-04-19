/// @description Insert description here
// You can write your code in this editor

pressed_shift = true;

if (pressed_shift && global.sound_effects && !global.paused) {
	audio_play_sound(snd_sfx_bahamobile_movement, 1, false);
	pressed_shift = false;
}