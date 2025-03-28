/// @description Insert description here
// You can write your code in this editor


/// Number of enemies to spawn
var enemy_count = enemies;

/// Room boundaries to prevent spawning outside
var spawn_margin = 50; // Margin from edges to avoid out-of-bound issues

// Loop through and create enemies
for (var i = 0; i < enemy_count; i++) {
    // Adjust spawn_x to ensure it is at least 500 pixels from the left
    var spawn_x = random_range(500 + spawn_margin, 9000 - spawn_margin);
    var spawn_y = random_range(spawn_margin, 250 - spawn_margin);

    // Spawn the enemy
    instance_create_layer(spawn_x, spawn_y, "Instances", obj_cost_flighter);
}
