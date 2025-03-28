/// @description Insert description here
// You can write your code in this editor

#region Effects

effect_trap -= 0.005;
effect_abt -= 0.005;
effect_time -= 0.01;

if (effect_trap > 0) {
draw_sprite_ext(
    spr_effect_trap_hit,							// sprite
    0,											// sub-image
    0,									// x position
    0,										// y position
    2,									// x scale
    5,									// y scale
    0,											// rotation
    c_white,									// color
    effect_trap									// alpha
);
}

if (effect_abt > 0) {
draw_sprite_ext(
    spr_effect_abt_hit,							// sprite
    0,											// sub-image
    display_get_gui_width(),									// x position
    0,										// y position
    2,									// x scale
    5,									// y scale
    0,											// rotation
    c_white,									// color
    effect_abt											// alpha
);
}

if (effect_time > 0) {
draw_sprite_ext(
    spr_effect_time_hit,							// sprite
    0,											// sub-image
    display_get_gui_width() / 2,									// x position
    display_get_gui_height(),										// y position
    8,									// x scale
    1,									// y scale
    0,											// rotation
    c_white,									// color
    effect_time										// alpha
);
}

#endregion

#region Timer Logic

if (timer > 0 && draw_mission_complete == false && draw_mission_failed == false) {
    if (!global.paused) timer -= 1; // Decrease the timer
}

var total_seconds = floor(timer / room_speed);
var minutes = total_seconds div 60;
var seconds = total_seconds mod 60;

// Format as MM:SS
var time_string = string(minutes) + ":" + string(seconds);

if (seconds <= 9) time_string = string(minutes) + ":0" + string(seconds)

if (timer <= 0) draw_mission_failed = true;

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
    spr_bahamobile_healthbar,							// sprite
    0,											// sub-image
    10,									// x position
    10,										// y position
    scale_x + 1,									// x scale
    scale_y + 1,									// y scale
    0,											// rotation
    c_white,									// color
    1											// alpha
);

// Display timer
draw_set_halign(fa_left);
draw_set_color(c_black);
draw_text(205, 129, "TIME LEFT: " + time_string);
draw_set_color(c_white);
draw_text(200, 129, "TIME LEFT: " + time_string);
draw_set_halign(fa_left);

//draw_text(250, 250, string(catch_up_points) + " / " + string(catch_up_points_max));


if (room != rm_Road4) {
	
	draw_sprite_ext(
		spr_clue_counter,							// sprite
		0,											// sub-image
		room_width,									// x position
		0,										// y position
		scale_x + 1,									// x scale
		scale_y + 1,									// y scale
		0,											// rotation
		c_white,									// color
		1											// alpha
	);

	draw_set_color(c_black)
	draw_text(room_width - 90, 155, string(clue_ctr) + "/3");
	draw_set_color(c_white)
	draw_text(room_width - 90, 150, string(clue_ctr) + "/3");

}


#endregion

#region Driving Meter

// Define progress bar parameters
var max_counter = catch_up_points_max;          // Maximum counter value (changeable for different levels)
var x_start = 450;               // Starting position of the tracker
var x_end = 1475;                // Ending position of the tracker

var bar_y = room_height - 115;             // Y position of the bar
var bar_height = 25;                      // Height of the bar
var progress_width = (catch_up_points / max_counter) * (x_end - x_start);

draw_set_color(#FFD300);
draw_rectangle(x_start, bar_y, x_start + progress_width, bar_y + bar_height, false);  // Filled rectangle
draw_set_color(c_white)

// Calculate tracker position based on counter progress
tracker_pos = x_start + (catch_up_points / max_counter) * (x_end - x_start);

obj_abt.x = room_width - tracker_pos - 75

draw_sprite_ext(
    spr_driving_meter,							// sprite
    0,											// sub-image
    room_width/2,									// x position
    room_height - 50,										// y position
    scale_x,									// x scale
    scale_y,									// y scale
    0,											// rotation
    c_white,									// color
    1											// alpha
);

draw_sprite_ext(
    spr_bahamobile_tracker,							// sprite
    0,											// sub-image
    tracker_pos,									// x position
    room_height - 100,										// y position
    scale_x,									// x scale
    scale_y,									// y scale
    0,											// rotation
    c_white,									// color
    1											// alpha
);

//show_debug_message(string(tracker_pos))

#endregion

#region Draw Mission Failed
if (draw_mission_failed) {
	
	/*
	if (room == rm_Road1) {
		global.driving_1_clues = 0;
	} else if (room == rm_Road2) {
		global.driving_2_clues = 0;
	} else if (room == rm_Road3) {
		global.driving_3_clues = 0;
	} */
	
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
			visible = false;
			if (instance_exists(obj_abt)) obj_abt.visible = false;
			
			if (room != rm_Road0) {
				instance_create_layer(0, 0, "Instances", obj_RoomTransition);
				obj_RoomTransition.target_room = rm_IconHome;
			} else {
				instance_create_layer(0, 0, "Instances", obj_RoomTransition);
				obj_RoomTransition.target_room = rm_IconHome;
			}
		}
	}
	
	
	draw_set_alpha(1);
	draw_set_color(c_white);
	
}
#endregion

#region Draw Mission Complete
if (draw_mission_complete) {
	
	instance_destroy(obj_bahamobile_spawner);
	
	if (room = rm_Road1) {
		global.driving_level1_complete = true;
	} else if (room = rm_Road2) {
		global.driving_level2_complete = true;
	} else if (room = rm_Road3) {
		global.driving_level3_complete = true;
	} else if (room = rm_Road4) {
		global.driving_level4_complete = true;
	}
	
	if (display) {
		
	draw_set_alpha(0.25);
	draw_set_color(c_black);
	draw_rectangle(0, 0, room_width, room_height, false)
	
	draw_set_alpha(0.75);
	draw_set_color(c_black);
	draw_rectangle(0, 200, rectangle_width1, room_height - 225, false)
	
	draw_set_alpha(1);
	draw_set_color(#BB1100);
	draw_rectangle(0, 0 + 200, rectangle_width1, 225, false)
	draw_rectangle(0, room_height - 200, rectangle_width1, room_height - 225, false)
	}
	
	if (rectangle_width1 >= room_width - 100 && display) {
		draw_sprite_ext(spr_mission_complete, 0, room_width/2, room_height/2 - 100, 4, 4, 0, c_white, 1);
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
			display = false;
			obj_bahamobile.visible = false;
			
			instance_create_layer(x, y, "Save", obj_Save);
			
			
			if (room == rm_Road0) {
				instance_create_layer(0, 0, "Instances", obj_RoomTransition);
				obj_RoomTransition.target_room = rm_IconHome;
			} else if (room != rm_Road4 && room != rm_Road0) {
				instance_create_layer(0, 0, "Instances", obj_RoomTransition);
				obj_RoomTransition.target_room = rm_IconHome;	
			} else {
				room_goto(rm_Cutscene_2)
			}
		}
	}
	
	
	draw_set_alpha(1);
	draw_set_color(c_white);
	
}

#endregion

#region ABT BOSS
if (room = rm_Road4) {
	
	draw_set_halign(fa_center);
	draw_set_font(fnt_default_small);
	if (abt_hp/30 >= 2) draw_text_color(display_get_gui_width()/2, 50, "CATCH UP AND RAM INTO MEOWWOMAN\n[" + string(abt_hp/30) + "] TIMES", c_white, c_white, c_white, c_white, 0.5);
	else if (abt_hp/30 == 1) draw_text_color(display_get_gui_width()/2, 50, "CATCH UP AND RAM INTO MEOWWOMAN\n[" + string(abt_hp/30) + "] TIME", c_white, c_white, c_white, c_white, 0.5);
	draw_set_font(fnt_default);
	
	var abt_offset = 1120;
	
	var abt_hppc;
	abt_hppc = (abt_hp / abt_max_hp) * 100;
	draw_healthbar(630 + abt_offset, 95, 168 + abt_offset, 27, abt_hppc, c_black, c_purple, c_purple, 0, true, true)
	
	draw_sprite_ext(
		spr_abt_healthbar,							// sprite
		0,											// sub-image
		display_get_gui_width() - 10,									// x position
		10,										// y position
		scale_x + 1,									// x scale
		scale_y + 1,									// y scale
		0,											// rotation
		c_white,									// color
		1											// alpha
	);
	
	if (abt_hp <= 0) {
		draw_mission_complete = true;	
	}
	
}

#endregion


