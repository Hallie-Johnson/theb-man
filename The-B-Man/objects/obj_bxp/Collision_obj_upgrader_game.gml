/// @description Insert description here
// You can write your code in this editor

if (other.b_xp_ctr < 27) other.b_xp_ctr++;

if (other.button_animation == 2) other.button_animation = 6;

if (other.index == 2 && other.button_animation < 2) other.button_animation++;

if (global.sound_effects) audio_play_sound(snd_sfx_clue_collected, 1, false)

instance_destroy();