/// @description Hit Logic
// You can write your code in this editor

hit = false;

hp -= enemy_damage;

if (global.sound_effects) audio_play_sound(snd_sfx_bahamowrang_hit, 1, false);

if (player_direction == "left") {
	if (!place_meeting(x + 30, y, obj_block)) x += 30;
} else {
	if (!place_meeting(x - 30, y, obj_block)) x -= 30;	
}