/// @description Insert description here
// You can write your code in this editor

if (collison_ctr == 0) {
	other.hp -= (250 + (global.upgrade_wrang_damage * 100));
	collison_ctr++;
	if (global.sound_effects) audio_play_sound(snd_sfx_bahamowrang_punch, 1, false);
}

if (room != rm_Battle0) {
if (obj_bahaman.player_direction == "right") {
	if (!place_meeting(x + 50, y, obj_block)) other.x += 50
	else other.y -= 50
} else if (obj_bahaman.player_direction == "left") {
	if (!place_meeting(x - 50, y, obj_block)) other.x -= 50
	else other.y -= 50
}
} else {
if (obj_tutorial_bahamowrang_bahaman.player_direction == "right") {
	if (!place_meeting(x + 50, y, obj_block)) other.x += 50
	else other.y -= 50
} else if (obj_tutorial_bahamowrang_bahaman.player_direction == "left") {
	if (!place_meeting(x - 50, y, obj_block)) other.x -= 50
	else other.y -= 50
}
}