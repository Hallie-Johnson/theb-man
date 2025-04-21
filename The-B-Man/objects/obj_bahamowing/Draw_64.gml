/// @description Insert description here
// You can write your code in this editor

#region Crosshair

if (global.paused == false) {

// Get the mouse position in GUI coordinates
var gui_mouse_x = display_mouse_get_x();
var gui_width = display_get_gui_width(); // Get the GUI width

//show_debug_message(string(gui_mouse_x) + "    " + string(gui_width));

if (gui_mouse_x >= 700 && right) {
	if (right) {
		// Convert GUI mouse coordinates to room coordinates
		var room_mouse_x = camera_get_view_x(view_camera[0]) + display_mouse_get_x() * (camera_get_view_width(view_camera[0]) / display_get_width());
		var room_mouse_y = camera_get_view_y(view_camera[0]) + display_mouse_get_y() * (camera_get_view_height(view_camera[0]) / display_get_height());

		// Check if the mouse is over an enemy
		if (place_meeting(room_mouse_x, room_mouse_y, obj_cost_flighter)) {
			// Change appearance when over an enemy
			draw_sprite_ext(
				spr_bahamowing_crosshair,    // sprite
				0,                // sub-image
				display_mouse_get_x(), // x position in GUI
				display_mouse_get_y(), // y position in GUI
				4,                // x scale
				4,                // y scale
				0,                // rotation
				c_white,            // color (optional to make it red)
				1                 // alpha
			);
		} else {
			// Normal appearance
			draw_sprite_ext(
				spr_bahamowing_crosshair,    // sprite
				1,                // sub-image
				display_mouse_get_x(), // x position in GUI
				display_mouse_get_y(), // y position in GUI
				3,                // x scale
				3,                // y scale
				0,                // rotation
				c_white,          // color
				1                 // alpha
			);
		}
	} 
}  else if (right) {
		draw_sprite_ext(
				spr_bahamowing_crosshair,    // sprite
				2,                // sub-image
				display_mouse_get_x(), // x position in GUI
				display_mouse_get_y(), // y position in GUI
				3,                // x scale
				3,                // y scale
				0,                // rotation
				c_white,          // color
				1                 // alpha
			);
	}


if (gui_mouse_x <= 1200 && !right) {
	if (!right) {
		// Convert GUI mouse coordinates to room coordinates
		var room_mouse_x = camera_get_view_x(view_camera[0]) + display_mouse_get_x() * (camera_get_view_width(view_camera[0]) / display_get_width());
		var room_mouse_y = camera_get_view_y(view_camera[0]) + display_mouse_get_y() * (camera_get_view_height(view_camera[0]) / display_get_height());

		// Check if the mouse is over an enemy
		if (place_meeting(room_mouse_x, room_mouse_y, obj_cost_flighter)) {
			// Change appearance when over an enemy
			draw_sprite_ext(
				spr_bahamowing_crosshair,    // sprite
				0,                // sub-image
				display_mouse_get_x(), // x position in GUI
				display_mouse_get_y(), // y position in GUI
				4,                // x scale
				4,                // y scale
				0,                // rotation
				c_white,            // color (optional to make it red)
				1                 // alpha
			);
		} else {
			// Normal appearance
			draw_sprite_ext(
				spr_bahamowing_crosshair,    // sprite
				1,                // sub-image
				display_mouse_get_x(), // x position in GUI
				display_mouse_get_y(), // y position in GUI
				3,                // x scale
				3,                // y scale
				0,                // rotation
				c_white,          // color
				1                 // alpha
			);
		}
	} else {
		draw_sprite_ext(
				spr_bahamowing_crosshair,    // sprite
				2,                // sub-image
				display_mouse_get_x(), // x position in GUI
				display_mouse_get_y(), // y position in GUI
				3,                // x scale
				3,                // y scale
				0,                // rotation
				c_white,          // color
				1                 // alpha
			);
	}
}  else if (!right) {
		draw_sprite_ext(
				spr_bahamowing_crosshair,    // sprite
				2,                // sub-image
				display_mouse_get_x(), // x position in GUI
				display_mouse_get_y(), // y position in GUI
				3,                // x scale
				3,                // y scale
				0,                // rotation
				c_white,          // color
				1                 // alpha
			);
	}

}





/*
// Check if the mouse is on the left or right side
if (gui_mouse_x < gui_width / 2) {
    // Mouse is on the left side of the GUI
    if (!right) {
		// Convert GUI mouse coordinates to room coordinates
		var room_mouse_x = camera_get_view_x(view_camera[0]) + display_mouse_get_x() * (camera_get_view_width(view_camera[0]) / display_get_width());
		var room_mouse_y = camera_get_view_y(view_camera[0]) + display_mouse_get_y() * (camera_get_view_height(view_camera[0]) / display_get_height());

		// Check if the mouse is over an enemy
		if (place_meeting(room_mouse_x, room_mouse_y, obj_Flight_Enemy)) {
			// Change appearance when over an enemy
			draw_sprite_ext(
				spr_Crosshair,    // sprite
				0,                // sub-image
				display_mouse_get_x(), // x position in GUI
				display_mouse_get_y(), // y position in GUI
				4,                // x scale
				4,                // y scale
				0,                // rotation
				c_white,            // color (optional to make it red)
				1                 // alpha
			);
		} else {
			// Normal appearance
			draw_sprite_ext(
				spr_Crosshair,    // sprite
				1,                // sub-image
				display_mouse_get_x(), // x position in GUI
				display_mouse_get_y(), // y position in GUI
				3,                // x scale
				3,                // y scale
				0,                // rotation
				c_white,          // color
				1                 // alpha
			);
		}
	} else {
		draw_sprite_ext(
				spr_Crosshair,    // sprite
				2,                // sub-image
				display_mouse_get_x(), // x position in GUI
				display_mouse_get_y(), // y position in GUI
				3,                // x scale
				3,                // y scale
				0,                // rotation
				c_white,          // color
				1                 // alpha
			);
	}
} else {
    // Mouse is on the right side of the GUI
    if (right) {
		// Convert GUI mouse coordinates to room coordinates
		var room_mouse_x = camera_get_view_x(view_camera[0]) + display_mouse_get_x() * (camera_get_view_width(view_camera[0]) / display_get_width());
		var room_mouse_y = camera_get_view_y(view_camera[0]) + display_mouse_get_y() * (camera_get_view_height(view_camera[0]) / display_get_height());

		// Check if the mouse is over an enemy
		if (place_meeting(room_mouse_x, room_mouse_y, obj_Flight_Enemy)) {
			// Change appearance when over an enemy
			draw_sprite_ext(
				spr_Crosshair,    // sprite
				0,                // sub-image
				display_mouse_get_x(), // x position in GUI
				display_mouse_get_y(), // y position in GUI
				4,                // x scale
				4,                // y scale
				0,                // rotation
				c_white,            // color (optional to make it red)
				1                 // alpha
			);
		} else {
			// Normal appearance
			draw_sprite_ext(
				spr_Crosshair,    // sprite
				1,                // sub-image
				display_mouse_get_x(), // x position in GUI
				display_mouse_get_y(), // y position in GUI
				3,                // x scale
				3,                // y scale
				0,                // rotation
				c_white,          // color
				1                 // alpha
			);
		}
	} 
	 else {
		draw_sprite_ext(
				spr_Crosshair,    // sprite
				2,                // sub-image
				display_mouse_get_x(), // x position in GUI
				display_mouse_get_y(), // y position in GUI
				3,                // x scale
				3,                // y scale
				0,                // rotation
				c_white,          // color
				1                 // alpha
			);
	}
} */

#endregion

#region Effects

effect_cost -= 0.005;
effect_hit -= 0.01;

if (effect_hit > 0) {
draw_sprite_ext(
    spr_effect_wing_hit,							// sprite
    0,											// sub-image
    0,									// x position
    0,										// y position
    2,									// x scale
    5,									// y scale
    0,											// rotation
    c_white,									// color
    effect_hit								// alpha
);
}

if (effect_cost > 0) {
draw_sprite_ext(
    spr_effect_cost_hit,							// sprite
    0,											// sub-image
    display_get_gui_width(),									// x position
    0,										// y position
    2,									// x scale
    5,									// y scale
    0,											// rotation
    c_white,									// color
    effect_cost											// alpha
);
}

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


if (room != rm_Air4) {
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
draw_text(1970 - 90, 155, string(clue_ctr) + "/3");
draw_set_color(c_white)
draw_text(1970 - 90, 150, string(clue_ctr) + "/3");
draw_set_halign(fa_left);
}

#endregion

#region Enemy Arrows
// Get GUI dimensions
var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();

// Center of the GUI
var center_x = gui_width / 2;
var center_y = gui_height / 2;

// Loop through all enemy instances
with (obj_cost_flighter) {
    // Convert the enemy's world position to GUI space
    var enemy_gui_x = (x - camera_get_view_x(view_camera[0])) / camera_get_view_width(view_camera[0]) * gui_width;
    var enemy_gui_y = (y - camera_get_view_y(view_camera[0])) / camera_get_view_height(view_camera[0]) * gui_height;

    // Calculate the direction from the center to the enemy
    var dir_to_enemy = point_direction(center_x, center_y, enemy_gui_x, enemy_gui_y);

    // Calculate the arrow's position (closer to the center)
    var arrow_distance = 250; // Distance from the center
    var arrow_x = center_x + lengthdir_x(arrow_distance, dir_to_enemy);
    var arrow_y = center_y + lengthdir_y(arrow_distance, dir_to_enemy);

    // Draw the arrow
    draw_sprite_ext(spr_arrow, 0, arrow_x, arrow_y, 3, 3, dir_to_enemy, c_white, 0.5);
}

#endregion

#region Radar

draw_sprite_ext(
    radar_sprite,							// sprite
    floor(radar_frame),											// sub-image
    display_get_gui_width()/2,									// x position
    display_get_gui_height() - 15,										// y position
    scale_x + 5,									// x scale
    scale_y + 5,									// y scale
    0,											// rotation
    c_white,									// color
    0.5										// alpha
);

bad_guy_ctr = instance_number(obj_cost_flighter)

draw_set_halign(fa_center);
draw_set_color(c_black);
draw_text(display_get_gui_width()/2, display_get_gui_height() - 90, "ENEMIES DETECTED\n" + string(bad_guy_ctr));
draw_set_color(c_white);
draw_text(display_get_gui_width()/2, display_get_gui_height() - 95, "ENEMIES DETECTED\n" + string(bad_guy_ctr));
draw_set_halign(fa_left);

#endregion

#region Draw Mission Failed
if (draw_mission_failed) {
    var gui_width = display_get_gui_width();
    var gui_height = display_get_gui_height();

    draw_set_alpha(0.25);
    draw_set_color(c_black);
    draw_rectangle(0, 0, gui_width, gui_height, false);
    
    draw_set_alpha(0.75);
    draw_set_color(c_black);
    draw_rectangle(0, 200, rectangle_width, gui_height - 225, false);
    
    draw_set_alpha(1);
    draw_set_color(#BB1100);
    draw_rectangle(0, 200, rectangle_width, 225, false);
    draw_rectangle(0, gui_height - 200, rectangle_width, gui_height - 225, false);
    
    if (rectangle_width >= gui_width - 100) {
        draw_sprite_ext(spr_mission_failed, 0, gui_width / 2, gui_height / 2 - 100, 4, 4, 0, c_white, 1);
        draw_sprite_ext(spr_mission_button, 0, gui_width / 2, gui_height / 2 + 200, 5, 5, 0, c_white, 1);
    }
    
    // Variables for the rectangle coordinates
    var x1 = gui_width / 2 - 150;
    var y1 = gui_height / 2 + 125;
    var x2 = gui_width / 2 + 150;
    var y2 = gui_height / 2 + 275;

    // Get the mouse position in GUI coordinates
    var mouse_x1 = device_mouse_x_to_gui(0);  // 0 is the first mouse
    var mouse_y1 = device_mouse_y_to_gui(0);

    // Check if the mouse is inside the rectangle when clicking
    if (mouse_x1 > x1 && mouse_x1 < x2 && mouse_y1 > y1 && mouse_y1 < y2) {
        if (mouse_check_button_pressed(mb_left)) {
            // Perform an action when the rectangle is clicked
			visible = false;
            instance_create_layer(0, 0, "Instances", obj_RoomTransition);
            obj_RoomTransition.target_room = rm_IconHome;
        }
    }

    draw_set_alpha(1);
    draw_set_color(c_white);
}

#endregion

#region Draw Mission Completed

if (draw_mission_complete) {
	
	canShoot = false;
	
    // Check which room is active and update the corresponding global variable
    if (room == rm_Air1) {
        global.flying_level1_complete = true;
    } else if (room == rm_Air2) {
        global.flying_level2_complete = true;
    } else if (room == rm_Air3) {
        global.flying_level3_complete = true;
    } else if (room == rm_Air4) {
		global.flying_level4_complete = true;	
	} else if (room == rm_Air0) {
		global.tutorial_flying_complete = true;	
	}

    if (display) {
        var gui_width = display_get_gui_width();
        var gui_height = display_get_gui_height();

        // Draw semi-transparent overlay
        draw_set_alpha(0.25);
        draw_set_color(c_black);
        draw_rectangle(0, 0, gui_width, gui_height, false);

        draw_set_alpha(0.75);
        draw_set_color(c_black);
        draw_rectangle(0, 200, rectangle_width1, gui_height - 225, false);

        draw_set_alpha(1);
        draw_set_color(#BB1100);
        draw_rectangle(0, 200, rectangle_width1, 225, false);
        draw_rectangle(0, gui_height - 200, rectangle_width1, gui_height - 225, false);
    }

    // Draw sprites when the rectangle animation completes
    if (rectangle_width1 >= display_get_gui_width() - 100 && display) {
        draw_sprite_ext(spr_mission_complete, 0, gui_width / 2, gui_height / 2 - 100, 4, 4, 0, c_white, 1);
        draw_sprite_ext(spr_mission_button, 0, gui_width / 2, gui_height / 2 + 200, 5, 5, 0, c_white, 1);
    }

    // Variables for clickable rectangle
    var x1 = gui_width / 2 - 150;
    var y1 = gui_height / 2 + 125;
    var x2 = gui_width / 2 + 150;
    var y2 = gui_height / 2 + 275;

    // Get the mouse position in GUI coordinates
    var mouse_x1 = device_mouse_x_to_gui(0);  // 0 is the first mouse
    var mouse_y1 = device_mouse_y_to_gui(0);

    // Check if the mouse is inside the rectangle when clicking
    if (mouse_x1 > x1 && mouse_x1 < x2 && mouse_y1 > y1 && mouse_y1 < y2) {
        if (mouse_check_button_pressed(mb_left)) {
            // Perform an action when the rectangle is clicked
			visible = false;
			
			instance_create_layer(x, y, "Save", obj_Save);
			
			if (room == rm_Air0) {
				instance_create_layer(0, 0, "Instances", obj_RoomTransition);
				obj_RoomTransition.target_room = rm_IconHome;
			} else if (room != rm_Air4 && room != rm_Air0) {
				instance_create_layer(0, 0, "Instances", obj_RoomTransition);
				obj_RoomTransition.target_room = rm_IconHome;	
			} else {
				room_goto(rm_Cutscene_3)
			}
			
        }
    }

    draw_set_alpha(1);
    draw_set_color(c_white);
}


#endregion

#region Timer

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


draw_set_halign(fa_left);
draw_set_color(c_black);
draw_text(205, 129, "TIME LEFT: " + time_string);
draw_set_color(c_white);
draw_text(200, 129, "TIME LEFT: " + time_string);
draw_set_halign(fa_left);

#endregion

#region COST BOSS
if (room = rm_Air4) {
	
	draw_set_halign(fa_center);
	draw_set_font(fnt_default_small);
	draw_text_color(display_get_gui_width()/2, 50, "DESTROY [" + string(instance_number(obj_cost_tower)) + "] BOT POWERING TOWERS\nTHEN TAKE DOWN MR. FROZEN", c_white, c_white, c_white, c_white, 0.5);
	draw_set_font(fnt_default);
	
	var abt_offset = 1120;
	
	var abt_hppc;
	if (instance_exists(obj_cost_bubble)) {
		abt_hppc = (obj_cost_bubble.hp / obj_cost_bubble.max_hp) * 100;
		draw_healthbar(630 + abt_offset, 95, 168 + abt_offset, 27, abt_hppc, c_black, c_aqua, c_aqua, 0, true, true)
		
		if (obj_cost_bubble.hp <= 0) {
			draw_mission_complete = true;	
		}
	}
	
	draw_sprite_ext(
		spr_cost_healthbar,							// sprite
		0,											// sub-image
		display_get_gui_width() - 10,									// x position
		10,										// y position
		scale_x + 1,									// x scale
		scale_y + 1,									// y scale
		0,											// rotation
		c_white,									// color
		1											// alpha
	);
	
	
	
}

#endregion


