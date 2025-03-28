/// @description Insert description here
// You can write your code in this editor

// If you beat wave 1
if (obj_Battle_Bahaman.enemy_ctr == 2 && wave == 1) {
	
	obj_Battle_Bahaman.enemy_ctr = 0;
	wave++;
	
} 

// If you beat wave 2
else if (obj_Battle_Bahaman.enemy_ctr == 3 && wave == 2) {
	
	obj_Battle_Bahaman.enemy_ctr = 0;
	wave++;
	
}

// If you beat wave 3
else if (obj_Battle_Bahaman.enemy_ctr == 4 && wave == 3) {
	
	obj_Battle_Bahaman.enemy_ctr = 0;
	wave++;
	
} 

x = obj_Battle_Bahaman.x


if (obj_Battle_Bahaman.y > 400) {
	y = 496
} else {
	y = 112;
}