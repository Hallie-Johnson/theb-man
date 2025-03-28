/// @description Insert description here
// You can write your code in this editor

var rm = room == rm_Road1 || room == rm_Road2 || room == rm_Road3;

if (rm && !audio_is_playing(music) && global.sound_music == true)
{
	if (instance_exists(obj_bahamobile)) {
		if (obj_bahamobile.draw_mission_complete == false && obj_bahamobile.draw_mission_failed == false) 
			snd = audio_play_sound(music, 1, true);
	}
}

if (active == false ) {

	if (!audio_is_playing(music) && global.sound_music == true)
	{
		//snd = audio_play_sound(music, 1, true);
	}


	if (instance_exists(obj_bahaman)) {
		if (obj_bahaman.draw_mission_complete == true) {
			active = true;
			audio_stop_sound(music);
			snd = audio_play_sound(snd_mission_complete, 1, true);
		}
		if (obj_bahaman.draw_mission_failed == true) {
			active = true;
			audio_stop_sound(music);
			snd = audio_play_sound(snd_mission_failed, 1, true);
		}
	}
	
	if (instance_exists(obj_bahamobile)) {
		if (obj_bahamobile.draw_mission_complete == true) {
			active = true;
			audio_stop_sound(music);
			snd = audio_play_sound(snd_mission_complete, 1, true);
		}
		if (obj_bahamobile.draw_mission_failed == true) {
			active = true;
			audio_stop_sound(music);
			snd = audio_play_sound(snd_mission_failed, 1, true);
		}
	}
	
	if (instance_exists(obj_bahamowing)) {
		if (obj_bahamowing.draw_mission_complete == true) {
			active = true;
			audio_stop_sound(music);
			snd = audio_play_sound(snd_mission_complete, 1, true);
		}
		if (obj_bahamowing.draw_mission_failed == true) {
			active = true;
			audio_stop_sound(music);
			snd = audio_play_sound(snd_mission_failed, 1, true);
		}
	}
	
	if (instance_exists(obj_tutorial_bahamowrang_bahaman)) {
		if (obj_tutorial_bahamowrang_bahaman.draw_mission_complete == true) {
			active = true;
			audio_stop_sound(music);
			snd = audio_play_sound(snd_mission_complete, 1, true);
		}
		if (obj_tutorial_bahamowrang_bahaman.draw_mission_failed == true) {
			active = true;
			audio_stop_sound(music);
			snd = audio_play_sound(snd_mission_failed, 1, true);
		}
	}
	
	
	if (global.sound_music == false) audio_sound_gain(snd, 0, 0);
	else if (global.paused == true) audio_sound_gain(snd, 0.25, 0);
	else audio_sound_gain(snd, 1, 0);
	
}