/// @description Insert description here
// You can write your code in this editor

hp -= 50;

if (hp <= 0) hp = 0;

effect_hit = 0.4;

if (global.sound_effects) audio_play_sound(snd_sfx_bahamobile_obstacle_hit, 1, false);

instance_destroy(other);