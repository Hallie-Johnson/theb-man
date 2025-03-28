/// @description Insert description here
// You can write your code in this editor

// Draw GUI Event

if (global.paused) {
	instance_deactivate_object(obj_juul_enemy);
	instance_deactivate_object(obj_juul_bullet);
	instance_deactivate_object(obj_bahamobile_spawner);
	instance_deactivate_object(obj_bahamobile_spawner_boss);
	cursor_sprite = spr_cursor;
} else {
	instance_activate_all();
}

if (global.paused) {

// Get the screen dimensions
var screen_width = display_get_gui_width();
var screen_height = display_get_gui_height();

// Draw the semi-transparent black overlay
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(0, 0, screen_width, screen_height, false);
draw_set_alpha(1); // Reset alpha

// Draw the "PAUSED" label in the top-left corner
draw_set_color(c_white);
draw_text(100, 300, "PAUSED");

// Define button properties
var button_width = 300;
var button_height = 75;
var button_spacing = 20;
var num_buttons = 4;
var total_height = (button_height * num_buttons) + (button_spacing * (num_buttons - 1));
var start_y = 400;
var start_x = 100;

// Button labels
var button_labels = [
    "Resume",
    "Restart Level",
    "Help",
    //"Settings",
    "Quit"
];

// Draw the buttons
for (var i = 0; i < num_buttons; i++) {
    // Calculate button position
    var btn_x1 = start_x;
    var btn_y1 = start_y + i * (button_height + button_spacing);
    var btn_x2 = btn_x1 + button_width;
    var btn_y2 = btn_y1 + button_height;

    // Calculate a unique shade of dark red for each button
    var red_value = 50 + i * 40; // Increases the red value for each button
    if (red_value > 255) red_value = 255; // Cap at 255
    var dark_red = make_color_rgb(red_value, 0, 0);

    // Draw button rectangle with the calculated dark red color
    draw_set_color(dark_red);
    draw_rectangle(btn_x1, btn_y1, btn_x2, btn_y2, false);

    // Draw button text (centered)
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    var text_x = (btn_x1 + btn_x2) / 2;
    var text_y = (btn_y1 + btn_y2) / 2 - string_height(button_labels[i]) / 2;
    draw_text(text_x, text_y, button_labels[i]);

    // Check for mouse click
    if (mouse_check_button_pressed(mb_left)) {
        var m_x = device_mouse_x_to_gui(0);
        var m_y = device_mouse_y_to_gui(0);
        if (m_x > btn_x1 && m_x < btn_x2 && m_y > btn_y1 && m_y < btn_y2) {
            // Debug statement for the clicked button
            show_debug_message("Button clicked: " + button_labels[i]);
			
			if (button_labels[i] == "Resume") {
				show_help = false;
				
				global.paused = false;
				
			} else if (button_labels[i] == "Restart Level") {
				show_help = false;
				
				global.paused = false;
				
				if (instance_exists(obj_bahaman)) obj_bahaman.visible = false;
				if (instance_exists(obj_bahamowrang_spawner)) obj_bahamowrang_spawner.visible = false;
				if (instance_exists(obj_bahamobile)) obj_bahamobile.visible = false;
				if (instance_exists(obj_bahamobile_lights)) obj_bahamobile_lights.visible = false;
				if (instance_exists(obj_abt)) obj_abt.visible = false;
				if (instance_exists(obj_bahamowing)) obj_bahamowing.visible = false;
				
				if (instance_exists(obj_tutorial_bahamowrang_bahaman)) obj_tutorial_bahamowrang_bahaman.visible = false;
				if (instance_exists(obj_tutorial_bahamowrang)) obj_tutorial_bahamowrang.visible = false;
				if (instance_exists(obj_tutorial_bahamobile)) obj_tutorial_bahamobile.visible = false;
				if (instance_exists(obj_tutorial_bahamowing)) obj_tutorial_bahamowing.visible = false;
				
				instance_create_layer(0, 0, "Instances", obj_RoomTransition);
				obj_RoomTransition.target_room = room;
			} else if (button_labels[i] == "Help") {
				
				show_help = !show_help;
				
			} else if (button_labels[i] == "Settings") {
				show_help = false;
				
			} else if (button_labels[i] == "Quit") {
				show_help = false;
				
				global.paused = false;
				
				if (instance_exists(obj_bahaman)) obj_bahaman.visible = false;
				if (instance_exists(obj_bahamowrang_spawner)) obj_bahamowrang_spawner.visible = false;
				if (instance_exists(obj_bahamobile)) obj_bahamobile.visible = false;
				if (instance_exists(obj_bahamobile_lights)) obj_bahamobile_lights.visible = false;
				if (instance_exists(obj_abt)) obj_abt.visible = false;
				if (instance_exists(obj_bahamowing)) obj_bahamowing.visible = false;
				
				if (instance_exists(obj_tutorial_bahamowrang_bahaman)) obj_tutorial_bahamowrang_bahaman.visible = false;
				if (instance_exists(obj_tutorial_bahamowrang)) obj_tutorial_bahamowrang.visible = false;
				if (instance_exists(obj_tutorial_bahamobile)) obj_tutorial_bahamobile.visible = false;
				if (instance_exists(obj_tutorial_bahamowing)) obj_tutorial_bahamowing.visible = false;
				
				if (room == rm_Battle0 || room == rm_Road0 || room = rm_Air0) {
					instance_create_layer(0, 0, "Instances", obj_RoomTransition);
					obj_RoomTransition.target_room = rm_IconHome;
				} else {
					instance_create_layer(0, 0, "Instances", obj_RoomTransition);
					obj_RoomTransition.target_room = rm_IconHome;
				}
			}
        }
    }
}

if (show_help) {
	
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	
	var help_str = "";
	
	if (room == rm_Battle0 || room == rm_Battle1 || room == rm_Battle2 || room == rm_Battle3 || room == rm_Battle4 || room == rm_Battle5) {
		 help_str = "Objective: Avoid losing your health and survive the waves of enemies.\n"
					+ "If you run out of stamina by sprinting and/or punching, THE B-MAN will\n"
					+ "need to rest and will be vulnerable to attacks until his stamina is\n"
					+ "restored."
					+ "\n\n\n Controls:"
					+ "\n\n [W] - Jump \n\n [D] - Move Left \n\n [A] - Move Right \n\n [SHIFT] + [A] or [D] - Sprint"
					+ "\n\n [LMB] - Punch \n\n [RMB + Aim with Mouse] - Throw B-WRANG";

	} else if (room == rm_Road0 || room == rm_Road1 || room = rm_Road2 || room = rm_Road3 || room == rm_Road4) {
		help_str = "Objective: Dodge Cat Traps and obstacles and get to Meowwoman. Cat Traps,\n"
					+ "which look like a paw print will deplete your health. Traffic cones are\n"
					+ "obstacles that will reduce your distance to Meowwoman. You must use your\n"
					+ "boost to reach Meowwoman in time."
					+ "\n\n\n Controls:"
					+ "\n\n [W] - Move Up \n\n [S] - Move Down \n\n [SHIFT] - Boost"
					
	} else if (room == rm_Air0 || room == rm_Air1 || room == rm_Air2 || room == rm_Air3 || room == rm_Air4) {
		help_str = "Objective: Eliminate all enemies. When boosting, you cannot move up or\n"
					+ "down due to the high speed of the B-WING. Upon getting defeated,\n"
					+ "enemies will drop power ups to restore your boost and health. In order\n"
					+ "to fire at enemies, the player will need to face the enemy in order to\n"
					+ "shoot as the B-WING cannot shoot targets behind itself."
					+ "\n\n\n Controls:"
					+ "\n\n [W] - Move Up \n\n [S] - Move Down \n\n [A] - Move Right \n\n [D] - Move Left \n\n [SHIFT] - Boost"
					+ "\n\n [LMB + Aim with Mouse] - Shoot ";			
	}
	
	draw_text(500, 250, help_str);
	
}


}