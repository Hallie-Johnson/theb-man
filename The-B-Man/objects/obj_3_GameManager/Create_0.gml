/// @description Insert description here
// You can write your code in this editor

wave = 1;


wave_config = ds_list_create();
visible = false;


// Wave 1
var wave1 = ds_list_create();
ds_list_add(wave1, obj_Battle_Enemy_Tank);
ds_list_add(wave1, 1);
ds_list_add(wave1, obj_Battle_Enemy_Ranged);
ds_list_add(wave1, 2);
ds_list_add(wave_config, wave1);

// Wave 2
var wave2 = ds_list_create();
ds_list_add(wave2, obj_Battle_Enemy_Fighter);
ds_list_add(wave2, 1);
ds_list_add(wave2, obj_Battle_Enemy_Tank);
ds_list_add(wave2, 2);
ds_list_add(wave_config, wave2);

// Wave 3
var wave3 = ds_list_create();
ds_list_add(wave3, obj_Battle_Joker_Juul);
ds_list_add(wave3, 1);
ds_list_add(wave_config, wave3);



function StartNewWave() {
    
    var current_wave = ds_list_find_value(wave_config, wave - 1); // Get current wave config
    
    for (var i = 0; i < ds_list_size(current_wave); i += 2) {
        var enemy_type = ds_list_find_value(current_wave, i);   // Enemy object type
        var enemy_count = ds_list_find_value(current_wave, i + 1); // Number of enemies to spawn
        
        // Spawn the required number of enemies
        for (var j = 0; j < enemy_count; j++) {
			
			var x_random = irandom_range(1, 10);
			var y_random = irandom_range(1, 10);
			
			var x_spawn = 0;
			var y_spawn = 0;
            
			if (x_random % 2 == 0) {
				x_spawn = irandom_range(100, 200);
			} else {
				x_spawn = irandom_range(-200, -100);
			}
			
			if (y_random % 2 == 0) {
				y_spawn = irandom_range(10, 50);
			} else {
				y_spawn = irandom_range(-50, -10);
			}
			
			if (enemy_type != obj_Battle_Joker_Juul)
				instance_create_layer(x + x_spawn, y + y_spawn, "Instances", enemy_type);
			else 
				instance_create_layer(1120, 416, "Instances", enemy_type);
        }
    }
}



/*
var debug_message = "x: " + string(x) + ", " +
                    "x_random: " + string(x_random) + ", " +
                    "x_spawn: " + string(x_spawn) + ", " +
                    "y: " + string(y) + ", " +
                    "y_random: " + string(y_random) + ", " +
                    "y_spawn: " + string(y_spawn);

			// Show the debug message
			show_debug_message(debug_message);
			
*/

/*
function StartNewWave() {
	
	var view_x_min = view_xview[0];
	var view_y_min = view_yview[0];
	var view_x_max = view_x_min + view_wview[0];
	var view_y_max = view_y_min + view_hview[0];
	
	
	
    var current_wave = ds_list_find_value(wave_config, wave - 1); // Get current wave config
    
    for (var i = 0; i < ds_list_size(current_wave); i += 2) {
        var enemy_type = ds_list_find_value(current_wave, i);   // Enemy object type
        var enemy_count = ds_list_find_value(current_wave, i+1); // Number of enemies to spawn
        
        // Spawn the required number of enemies
        for (var j = 0; j < enemy_count; j++) {
            var player_x = obj_Battle_Bahaman.x;
			var player_y = obj_Battle_Bahaman.y;

			var spawn_x;
			var spawn_y;
			var distance = 0;

			repeat (10) {  // Attempt to find a valid position in a maximum of 10 tries
				// Randomize spawn position within viewport
				spawn_x = irandom_range(view_x_min + 5, view_x_max - 5); // Keep enemy within the viewport with a margin of 10 pixels
				spawn_y = irandom_range(view_y_min + 1, view_y_max - 1);

				// Calculate distance to the player
				distance = point_distance(player_x, player_y, spawn_x, spawn_y);

				// Check if the position is at least 5 units away from the player
				if (distance >= 3) {
					break; // Exit the loop if the distance condition is met
				}
			}

			// Spawn the enemy at the valid position
			instance_create_layer(spawn_x, spawn_y, "Instances", enemy_type);
        }
    }

} */