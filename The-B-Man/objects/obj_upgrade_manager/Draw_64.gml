/// @description Insert description here
// You can write your code in this editor


//draw_sprite_ext(spr_upgrade_panel, 0, room_width - 100, 175, -10, 10, 0, c_white, 1);

//var clue_count = global.battle_1_clues + global.battle_2_clues + global.battle_3_clues +
				//global.driving_1_clues + global.driving_2_clues + global.driving_3_clues +
				//global.flying_1_clues + global.flying_2_clues + global.flying_3_clues;

// SET UPGRADE POINTS AND CLUES TO BE EQUAL
//global.upgrade_points = clue_count;

var upgrade_count = global.upgrade_wrang_health + global.upgrade_wrang_damage + global.upgrade_wrang_count +
				global.upgrade_mobile_health + global.upgrade_mobile_boost + global.upgrade_mobile_speed +
				global.upgrade_wing_health + global.upgrade_wing_damage + global.upgrade_wing_speed;
				

draw_set_halign(fa_center);
draw_sprite_ext(spr_upgrade_point, 2, room_width - 210, 215, -8, 8, 0, c_white, 1);
//draw_sprite_ext(spr_clue_HUD, 6, room_width - 465, 465, 8, 8, 0, c_white, 1);

if (global.upgrade_points < 0) {
	global.upgrade_points = 0;	
}

draw_set_color(c_black);
draw_text(room_width - 340, 445, "\nB-XP COUNT: " + string(global.upgrade_points) + "\n\nUPGRADES: " + string(upgrade_count) + " / 27");

draw_set_color(c_white);
draw_text(room_width - 340, 440, "\nB-XP COUNT: " + string(global.upgrade_points) + "\n\nUPGRADES: " + string(upgrade_count) + " / 27");

	//+ "\n\n\n\n\n\n\n\nCLUES FOUND: " + string(clue_count) + "/27");




var upgrade_text = "";

if (current_upgrade_index == 0) upgrade_text = "UPGRADE YOUR WEAPONS HERE";
else if (current_upgrade_index == 1) upgrade_text = "THE B-WRANG";
else if (current_upgrade_index == 2) upgrade_text = "THE B-MOBILE";
else upgrade_text = "THE B-WING";


draw_set_font(fnt_default)

draw_set_halign(fa_center);

draw_set_color(c_black);
draw_text(room_width/2, room_height/2 + 200, upgrade_text);
draw_text(room_width/2, room_height/2 - 450 + 10, "['A' OR 'D'] TO NAVIGATE THE ARMORY");

draw_set_color(c_white);
draw_text(room_width/2, room_height/2 + 195, upgrade_text);
draw_text(room_width/2, room_height/2 - 450 + 5, "['A' OR 'D'] TO NAVIGATE THE ARMORY");



draw_set_halign(fa_left);