
if (tutorial_step == 1) tutorial_step = 2;
else if (tutorial_step == 7) tutorial_step = 8;
else if (tutorial_step == 9) tutorial_step = 10;
else if (tutorial_step == 10) tutorial_step = 11;
else if (tutorial_step == 11) {
	instance_create_layer(obj_bahamowing.x + 750, obj_bahamowing.y, "Instances", obj_cost_flighter);
	tutorial_step = 12;
}
else if (tutorial_step == 12) {
	tutorial_step = 13;
}
else if (tutorial_step == 13) {
	instance_create_layer(obj_bahamowing.x + 25, obj_bahamowing.y + 25, "Instances", obj_bahamowing_boost);
	instance_create_layer(obj_bahamowing.x - 25, obj_bahamowing.y - 25, "Instances", obj_bahamowing_health);
	tutorial_step = 14;
}
else if (tutorial_step == 14) {
	var spawner = instance_create_layer(x, y, "Instances", obj_tutorial_bahamowing_spawner);
	tutorial_step = 15;
}
else if (tutorial_step == 15) tutorial_step = 16;