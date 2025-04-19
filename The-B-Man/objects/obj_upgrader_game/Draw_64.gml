/// @description Insert description here
// You can write your code in this editor

//draw_sprite_ext(
//    spr_filter,							// sprite
//    0,											// sub-image
//    0,									// x position
//    0,										// y position
//    1,									// x scale
//    1,									// y scale
//    0,											// rotation
//    c_white,									// color
//    0.5											// alpha
//);

//draw_set_font(fnt_default);
//draw_set_halign(fa_left);
//draw_set_color(c_black);
//draw_text(10, 15, "B-XP: " + string(b_xp_ctr));
//draw_set_color(c_white);
//draw_text(10, 10, "B-XP: " + string(b_xp_ctr));
//draw_set_halign(fa_left);


draw_set_font(fnt_default)

draw_set_halign(fa_center)

draw_set_color(c_black)
draw_text(room_width / 2, room_height/2, instructions[index]);
//draw_text(room_width/2, room_height/2 - 450 + 10, "['A' OR 'D'] TO NAVIGATE");

draw_set_color(c_white)
draw_text(room_width / 2, room_height/2 - 5, instructions[index]);
//draw_text(room_width/2, room_height/2 - 450 + 5, "['A' OR 'D'] TO NAVIGATE");


if (b_xp_ctr != 0 && ((b_xp_ctr % 5 == 0 && b_xp_ctr != 20 && b_xp_ctr != 25) || b_xp_ctr == 27) && collected == false) {
	collected = true;
	
	if (index < 4) index++;
}

if (b_xp_ctr % 5 != 0) {
	collected = false;
}

if (index == 1) {
	draw_sprite_ext(spr_icon_player, 0, room_width / 2, room_height/2 - 200, 5, 5, 0, c_white, 1);	
}

if (index == 2) {
	draw_sprite_ext(spr_upgrade_button_tutorial, button_animation, room_width / 2, room_height/2 - 200, 5, 5, 0, c_white, 1);	
}


draw_sprite_ext(
    spr_clue_counter,							// sprite
    0,											// sub-image
    1925,									// x position
    0,										// y position
    scale_x + 1,									// x scale
    scale_y + 1,									// y scale
    0,											// rotation
    c_white,									// color
    1											// alpha
);

draw_set_halign(fa_right);
draw_set_color(c_black)
draw_text(1970 - 85, 155, string(b_xp_ctr) + "/27");
draw_set_color(c_white)
draw_text(1970 - 85, 150, string(b_xp_ctr) + "/27");
draw_set_halign(fa_left);
