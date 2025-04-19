/// @description Insert description here
// You can write your code in this editor

// Choose a random spawn position inside room bounds
var margin = 100;
var spawn_x = irandom_range(margin, room_width - margin);
var spawn_y = irandom_range(0, -50);

// Spawn the health object
instance_create_layer(spawn_x, spawn_y, "Instances", obj_mech_health);

// Set the next spawn time randomly (long intervals)
alarm[0] = irandom_range(900, 1800); // Random between 5 and 15 seconds at 60 FPS
