/// @description Insert description here
// You can write your code in this editor

draw_self();


if (obj_Intro.timer >= 1650) {
	image_index = 5;
} else if (obj_Intro.timer >= 1450) {
	image_index = 5;
} else if (obj_Intro.timer >= 1250) {
	image_index = 3;
} else if (obj_Intro.timer >= 600) {
	image_index = 2;
} else if (obj_Intro.timer >= 360) {
	image_index = 1;
} else if (obj_Intro.timer >= 180) {
	image_index = 0;
}

if (obj_Intro.timer == 750) {
	visible = false;
	x = 80
	y = 80
} else if (obj_Intro.timer == 750) {
	visible = true;
}