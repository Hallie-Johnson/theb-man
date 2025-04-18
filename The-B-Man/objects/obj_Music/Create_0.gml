/// @description Insert description here
// You can write your code in this editor

if (room == rm_Title) {
	snd = audio_play_sound(snd_title_screen, 1, true);
} else {
	snd = audio_play_sound(music, 1, true);	
}



if (global.sound_music == false) audio_sound_gain(snd, 0, 0);

active = false;