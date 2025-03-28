/// @description Insert description here
// You can write your code in this editor

obj_bahaman.juul_hp -= (1 * (global.upgrade_wrang_damage + 1));

if (global.sound_effects) audio_play_sound(snd_sfx_bahamowrang_punch, 1, false);

obj_bahaman.effect_juul_hit = 0.7;

instance_destroy(other);

start_shake()