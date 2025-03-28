/// @description Insert description here
// You can write your code in this editor

if (!global.paused) {

// Step 1: Pick a random lane to leave clear
var clear_lane_index = irandom(2);

// Step 2: Spawn objects in the other lanes
for (var i = 0; i < array_length(lanes); i++) {
	var spawned_clue = false;
    if (i != clear_lane_index) {
        // Create an object in the lane
		var spawn_clue = irandom(20);
		//show_debug_message(string(spawn_boost))
		if (spawn_clue < (obj_bahamobile.car_speed * -1)) var trap = instance_create_layer(room_width, lanes[i], "Instances", obj_abt_trap); 
		else var obj = instance_create_layer(room_width, lanes[i], "Instances", obj_obstacle); 
    } else {
		var spawn_boost = irandom(3);
		//show_debug_message(string(spawn_boost))
		if (spawn_boost > 2) var boost = instance_create_layer(room_width, lanes[i], "Lights", obj_bahamobile_boost); 
	}
	
	if (i < array_length(lanes) - 1) {
		spawned_clue = false;	
	}
}

}

// Reset the alarm for the next spawn cycle
alarm[0] = spawn_interval * room_speed;
