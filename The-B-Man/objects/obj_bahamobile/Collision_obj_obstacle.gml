/// @description Insert description here
// You can write your code in this editor

//hp -= 100;

effect_time = 0.5;

var hit = instance_create_layer(x + 20, y - 10, "Instances", obj_bahamobile_hit);
hit.depth = -500;

//if (hp <= 0) draw_mission_failed = true;

if (catch_up_points - 100 <= 0) catch_up_points = 0;
else if (catch_up_points > 0) catch_up_points -= 100;

if (global.sound_effects) audio_play_sound(snd_sfx_bahamobile_obstacle_hit, 1, false);

instance_destroy(other);