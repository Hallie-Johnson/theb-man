/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_cost)) {
	x = obj_cost.x;
	y = obj_cost.y;
	visible = true;
} else {
	visible = false;	
}


if (hp <= 100) {
	image_alpha -= 0.01;	
}