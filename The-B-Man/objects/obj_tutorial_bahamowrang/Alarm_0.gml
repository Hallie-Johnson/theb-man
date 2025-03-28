/// @description Insert description here
// You can write your code in this editor

if (tutorial_step == 1) tutorial_step = 2;
else if (tutorial_step == 7) tutorial_step = 8;
else if (tutorial_step == 9) tutorial_step = 10;
else if (tutorial_step == 10) {
	tutorial_step = 11;
	instance_create_layer(obj_tutorial_bahamowrang_bahaman.x, obj_tutorial_bahamowrang_bahaman.y - 150, "Instances", obj_juul_enemy_fighter);	
} else if (tutorial_step == 11) {
	tutorial_step = 12;
	instance_create_layer(obj_tutorial_bahamowrang_bahaman.x, obj_tutorial_bahamowrang_bahaman.y - 150, "Instances", obj_juul_enemy_ranged);	
} else if (tutorial_step == 12) {
	tutorial_step = 13;
	instance_create_layer(obj_tutorial_bahamowrang_bahaman.x, obj_tutorial_bahamowrang_bahaman.y - 150, "Instances", obj_juul_enemy_tank);
} else if (tutorial_step == 13) {
	tutorial_step = 14;
	var spawner = instance_create_layer(x, y, "Instances", obj_bahamowrang_spawner);
	spawner.total_waves = 1;
	spawner.waves = [3];
	spawner.depth = -1000;
} else if (tutorial_step == 14) {
	tutorial_step = 15;
}
else if (tutorial_step == 16) {
	tutorial_step = 170;
}