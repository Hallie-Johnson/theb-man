/// @description Insert description here
// You can write your code in this editor

// Move downward
y += 2; // Adjust speed as needed

// Destroy the object if it moves past the bottom of the screen
if (y > room_height) {
    instance_destroy();
}
