/// @description Insert description here
// You can write your code in this editor

var margin = 250;
var spawn_x = irandom_range(margin, room_width - margin);
var spawn_y = -50;

// Spawn the health object
instance_create_layer(spawn_x, spawn_y, "Instances", obj_bxp);

// Set the next spawn time randomly (long intervals)
if (b_xp_ctr < 10) alarm[0] = irandom_range(150, 300); // Next spawn in 10 to 30 seconds
else alarm[0] = irandom_range(100, 150); // Next spawn in 10 to 30 seconds