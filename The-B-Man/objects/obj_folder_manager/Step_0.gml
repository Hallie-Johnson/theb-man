/// @description Insert description here
// You can write your code in this editor

// Step Event
time += 1 / room_speed; // Increment time (1 second = room_speed steps)

// Calculate the bobbing offset
var offset = bob_amplitude * sin((time / bob_period) * 2 * pi);

// Update the Y position
y = start_y + offset;