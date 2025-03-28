/// @description Insert description here
// You can write your code in this editor

#region Icons

#region Battle Icon Attack 1
draw_sprite_ext(
    BattleIconAttack1,							// sprite
    0,											// sub-image
    x_pos - 250,									// x position
    y_pos,										// y position
    scale_x,									// x scale
    scale_y,									// y scale
    0,											// rotation
    c_white,									// color
    1											// alpha
);

#endregion

#region Battle Icon Attack 2
draw_sprite_ext(
    BattleIconAttack2,							// sprite
    0,											// sub-image
    x_pos - 85,								// x position
    y_pos,										// y position
    scale_x,									// x scale
    scale_y,									// y scale
    0,											// rotation
    c_white,									// color
    1											// alpha
);

#endregion

#region Battle Icon Block
draw_sprite_ext(
    BattleIconBlock,							// sprite
    0,											// sub-image
    x_pos + 85,									// x position
    y_pos,										// y position
    scale_x,									// x scale
    scale_y,									// y scale
    0,											// rotation
    c_white,									// color
    1											// alpha
);

#endregion

#region Battle Icon Dash
draw_sprite_ext(
    BattleIconDash,							// sprite
    0,											// sub-image
    x_pos + 250,								// x position
    y_pos,										// y position
    scale_x,									// x scale
    scale_y,									// y scale
    0,											// rotation
    c_white,									// color
    1											// alpha
);

#endregion

#region Status Bars (Health / Stamina)

draw_sprite_ext(
    spr_bahaman_health_effect,							// sprite
    0,											// sub-image
    0,									// x position
    0,										// y position
    scale_x + 7,									// x scale
    scale_y + 7,									// y scale
    0,											// rotation
    c_white,									// color
    health_warning											// alpha
);

var hppc;
hppc = (hp / max_hp) * 100;
//draw_healthbar(120, 27, 445, 70, hppc, c_black, bahaman_light_red, bahaman_dark_red, 0, true, true)
draw_healthbar(170, 27, 630, 95, hppc, c_black, bahaman_light_red, bahaman_dark_red, 0, true, true)

var stampc;
stampc = (stam / max_stam) * 100
//draw_healthbar(120, 72, 425, 90, stampc, c_black, bahaman_dark_white, bahaman_white, 0, true, true)
draw_healthbar(170, 125, 605, 100, stampc, c_black, bahaman_dark_white, bahaman_white, 0, true, true)

draw_sprite_ext(
    spr_bahaman_healthbar,							// sprite
    0,											// sub-image
    10,									// x position
    10,										// y position
    scale_x + 1,									// x scale
    scale_y + 1,									// y scale
    0,											// rotation
    c_white,									// color
    1											// alpha
);

#endregion

#region GO! Indicator

if (activate_go) {
draw_sprite_ext(
    go_animation,          // sprite
    floor(go_animation_frame),  // sub-image (round down to nearest integer)
    room_width - 500,             // x position
    50,             // y position
    scale_x,                    // x scale
    scale_y,                    // y scale
    0,                    // rotation
    c_white,              // color
    1                     // alpha
);
}

#endregion

//draw_text(x_pos - 185, y_pos + 10, bahamarang_ctr);
draw_set_halign(fa_left);
draw_set_color(c_white)
draw_set_font(fnt_default_small);
draw_text_transformed(x_pos - 225, y_pos + 15, string(bahamawrangs_max - bahamawrangs), 1.5, 1.5, 0);

//draw_text(100, 100, enemy_ctr);
//draw_text(1000, 100, "Clues" + string(global.clues));


if (draw_mission_failed) {
	
	/*
	draw_set_alpha(0.25);
	draw_set_color(c_black);
	draw_rectangle(0, 0, room_width, room_height, false)
	
	draw_set_alpha(0.75);
	draw_set_color(c_black);
	draw_rectangle(0, 200, rectangle_width, room_height - 225, false)
	
	draw_set_alpha(1);
	draw_set_color(#BB1100);
	draw_rectangle(0, 0 + 200, rectangle_width, 225, false)
	draw_rectangle(0, room_height - 200, rectangle_width, room_height - 225, false)
	
	if (rectangle_width >= room_width - 100) {
		draw_sprite_ext(spr_mission_failed, 0, room_width/2, room_height/2 - 100, 4, 4, 0, c_white, 1);
		draw_sprite_ext(spr_mission_button, 0, display_get_gui_width()/2, display_get_gui_height()/2 + 200, 5, 5, 0, c_white, 1);
	}
	
	draw_set_alpha(0.75);
	//draw_rectangle(room_width/2 - 150, room_height/2 + 125,  room_width/2 + 150, room_height/2 + 275, false)
	
	// Variables for the rectangle coordinates
	var x1 = room_width / 2 - 150;
	var y1 = room_height / 2 + 125;
	var x2 = room_width / 2 + 150;
	var y2 = room_height / 2 + 275;

	// Get the mouse position in GUI coordinates
	var mouse_x1 = device_mouse_x_to_gui(0);  // 0 is the first mouse
	var mouse_y1 = device_mouse_y_to_gui(0);

	// Check if the mouse is inside the rectangle when clicking
	if (mouse_x1 > x1 && mouse_x1 < x2 && mouse_y1 > y1 && mouse_y1 < y2) {
		if (mouse_check_button_pressed(mb_left)) {
			// Perform an action when the rectangle is clicked
			room_goto(rm_IconHome);
		}
	}
	*/
	
	room_restart();
	
	
	draw_set_alpha(1);
	draw_set_color(c_white);
	
}