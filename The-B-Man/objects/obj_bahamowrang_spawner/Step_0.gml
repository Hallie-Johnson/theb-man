/// @description Insert description here
// You can write your code in this editor

wave_timer = clamp(wave_timer, 0, 60);

if (!instance_exists(obj_juul_enemy)) {
	skip_wave = true;
} else {
	skip_wave = false;
}

// Step Event
if (time_left > 0) {
    // Countdown timer before the game starts or between waves
    if (!global.paused) time_left -= 1 / room_speed;
	
    if (time_left <= 0) {
        if (current_wave == 0) {
            // Start first wave after the initial countdown
            spawn_wave();
            wave_active = true;
			skip_wave = false;
        }
    }
} else if (wave_active) {
    // Timer for spawning waves
	
	if (room != rm_Battle0) {
		if (obj_bahaman.hp > 0) {
	
			if (!global.paused) {
				if (!skip_wave) wave_timer -= 1 / room_speed;
				else if (skip_wave && wave_timer <= 6) wave_timer -= 1 / room_speed
				else wave_timer -= (1 / (room_speed * 0.1));
			}
		}	
	} else {
		if (obj_tutorial_bahamowrang_bahaman.hp > 0) {
	
			if (!global.paused) {
				if (!skip_wave) wave_timer -= 1 / room_speed;
				else if (skip_wave && wave_timer <= 6) wave_timer -= 1 / room_speed
				else wave_timer -= (1 / (room_speed * 0.1));
			}
		}	
	}
	
    if (wave_timer <= 0) {
        if (current_wave < total_waves) {
            spawn_wave();
        } else {
            // Check if all enemies are gone
            if (!instance_exists(obj_juul_enemy)) {
                if (room != rm_Battle5) {
					mission_complete = true;
					wave_active = false; // Stop spawning waves
				}
				else {
					current_wave--;
				}
                
            }
        }
    }
}

// Function to spawn a wave
function spawn_wave() {
    if (current_wave < total_waves) {
        current_wave++;
        var enemy_type;
        var enemy_count = waves[current_wave - 1];

        for (var i = 0; i < enemy_count; i++) {
            var spawn_x = irandom_range(150, room_width - 150);
            var spawn_y = 0; // Spawn just above the screen -50
			
			var enemy = irandom_range(1, 3);
			
			if (enemy == 1) enemy_type = obj_juul_enemy_fighter;
			else if (enemy == 2) enemy_type = obj_juul_enemy_ranged;
			else enemy_type = obj_juul_enemy_tank;
			
            instance_create_layer(spawn_x, spawn_y, "Instances", enemy_type);
        }

        wave_timer = 30; // Reset timer for next wave
    }
}