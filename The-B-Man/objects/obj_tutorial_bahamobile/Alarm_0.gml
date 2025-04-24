/// @description Insert description here
// You can write your code in this editor

if (tutorial_step == 1) tutorial_step = 2;
else if (tutorial_step == 5) tutorial_step = 6;
else if (tutorial_step == 6) {
	instance_create_layer(x + 100, y_1, "Instances", obj_bahamobile_boost);
	instance_create_layer(x + 100, y_2, "Instances", obj_bahamobile_boost);
	instance_create_layer(x + 100, y_3, "Instances", obj_bahamobile_boost);
	tutorial_step = 7;
}
else if (tutorial_step == 7) {
	tutorial_step = 8;
}
else if (tutorial_step == 8) {
	tutorial_step = 9;	
}
else if (tutorial_step == 9) {
	tutorial_step = 10;
	instance_create_layer(x + 250, y_1, "Instances", obj_obstacle);
	instance_create_layer(x + 250, y_2, "Instances", obj_obstacle);
	instance_create_layer(x + 250, y_3, "Instances", obj_obstacle);
}
else if (tutorial_step == 10) {
	tutorial_step = 11;
	instance_create_layer(x + 250, y_1, "Instances", obj_abt_trap);
	instance_create_layer(x + 250, y_2, "Instances", obj_abt_trap);
	instance_create_layer(x + 250, y_3, "Instances", obj_abt_trap);
}
else if (tutorial_step == 11) {
	tutorial_step = 12;
	instance_create_layer(x + 250, y_1, "Instances", obj_bahamobile_health);
	instance_create_layer(x + 250, y_2, "Instances", obj_bahamobile_health);
	instance_create_layer(x + 250, y_3, "Instances", obj_bahamobile_health);
}
else if (tutorial_step == 12) {
	instance_create_layer(416, 544, "Instances", obj_bahamobile_spawner);
	tutorial_step = 13;
} else if (tutorial_step == 13) {
	tutorial_step = 14;	
} else if (tutorial_step == 14) {
	tutorial_step = 15;	
}