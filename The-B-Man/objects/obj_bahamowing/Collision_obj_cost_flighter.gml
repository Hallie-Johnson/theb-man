/// @description Insert description here
// You can write your code in this editor

if (hp <= 0) hp = 0;

effect_hit = 0.6;

if (object_get_name(other.object_index) != "obj_cost") {
	hp -= 200;
	if (global.sound_effects) audio_play_sound(snd_sfx_bahamobile_abt_trap, 1, false);
	instance_destroy(other);
} else {
	hp -= 5;	
}