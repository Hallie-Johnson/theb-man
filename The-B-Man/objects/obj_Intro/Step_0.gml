/// @description Insert description here
// You can write your code in this editor


if (timer == 180) {
	instance_create_layer(200, 75, "Instances_2", obj_Dialogue)
} else if (timer == 750) {
	instance_create_layer(100, 25, "Instances_2", obj_Beam)
} else if (timer == 780) {
	obj_Bahamon.visible = false;
} else if (timer > 1250) {
	obj_Dialogue.visible = true;
} else if (timer == 1500) {
	instance_create_layer(-1396, -200, "Instances_2", obj_Fade)
}

if (timer > 1500) {
	image_alpha = image_alpha + fade_speed;
} else {
	image_alpha = image_alpha - fade_speed;
}