/// @description Insert description here
// You can write your code in this editor

if (!death) {
	hp = hp - (25 + (global.upgrade_wing_damage * 25));
	if (obj_cost_bubble.hp >= 100) obj_cost_bubble.hp = obj_cost_bubble.hp - (25 + (global.upgrade_wing_damage * 25));
	obj_bahamowing.effect_cost = 0.4;
}

instance_destroy(other);

if (hp <= 0) {
	obj_bahamowing.effect_cost = 0.6;
	death = true;
}