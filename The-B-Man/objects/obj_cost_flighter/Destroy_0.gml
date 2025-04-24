/// @description Insert description here
// You can write your code in this editor

if (global.sound_effects) audio_play_sound(snd_sfx_bahamowing_enemy_death, 1, false);

// Generate a random number between 0 and 100
var spawn_chance = random(100);

// 20% chance for a Boost Powerup
if (spawn_chance < 20) {
    instance_create_layer(x, y, "Instances", obj_bahamowing_boost);
}
// 20% chance for a Health Powerup
else if (spawn_chance < 40) {
    instance_create_layer(x, y, "Instances", obj_bahamowing_health);
}
// 30% chance for a Clue Pickup
else if (spawn_chance < 70 && instance_number(obj_cost_flighter) > 2 && instance_number(obj_bahamowing_clue) == 0) {
	
	if (room == rm_Air1) {
		if (global.flying_1_clues < 3) {
			instance_create_layer(x, y, "Instances", obj_bahamowing_clue);
		}
	} else if (room == rm_Air2) {
		if (global.flying_2_clues < 3) {
			instance_create_layer(x, y, "Instances", obj_bahamowing_clue);
		}
	} else if (room == rm_Air3) {
		if (global.flying_3_clues < 3) {
			instance_create_layer(x, y, "Instances", obj_bahamowing_clue);
		}
	}
	
}
// No spawn for the rest (55% chance)
