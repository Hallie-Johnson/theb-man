/// @description Insert description here
// You can write your code in this editor

if (fade_in)
	image_alpha += fade_speed;
else 
	image_alpha -= fade_speed;

y -= 0.05;


if (obj_Intro.timer == 930) {
	fade_in = false;
}