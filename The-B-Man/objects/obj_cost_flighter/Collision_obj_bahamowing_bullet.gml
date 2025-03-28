/// @description Insert description here
// You can write your code in this editor

hp = hp - (25 + (global.upgrade_wing_damage * 25));

instance_destroy(other);

if (hp <= 0) instance_destroy();