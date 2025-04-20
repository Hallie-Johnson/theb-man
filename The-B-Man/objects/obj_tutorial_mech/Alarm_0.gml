
if (tutorial_step == 1) tutorial_step = 2;
else if (tutorial_step == 6) tutorial_step = 7;
else if (tutorial_step == 9) {
	tutorial_step = 10;
	instance_create_layer(x, y, "Instances", obj_mech_spawner_tutorial);
}
else if (tutorial_step == 10) {
	tutorial_step = 11;
}
else if (tutorial_step == 11) {
	tutorial_step = 12;
}