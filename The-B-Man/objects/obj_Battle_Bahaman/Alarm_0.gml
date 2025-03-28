/// @description Insert description here
// You can write your code in this editor

// Resting State
move_speed = 1.5;
stam = clamp(stam, 5, max_stam); // Ensure stamina starts within bounds
state = Battle_State.Idle;
