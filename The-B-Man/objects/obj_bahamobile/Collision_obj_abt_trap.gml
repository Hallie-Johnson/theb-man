/// @description Insert description here
// You can write your code in this editor

hp -= 250;

effect_trap = 0.6;

var hit = instance_create_layer(x + 20, y - 10, "Instances", obj_bahamobile_hit);
hit.depth = -500;

if (hp <= 0) draw_mission_failed = true;

if (global.sound_effects) audio_play_sound(snd_sfx_bahamobile_abt_trap, 1, false);

instance_destroy(other);