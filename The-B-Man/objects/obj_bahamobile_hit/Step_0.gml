/// @description Insert description here
// You can write your code in this editor

x = obj_bahamobile.x + 20

y = obj_bahamobile.y - 10

// Check if the animation is on the last frame
if (image_index >= image_number - 1) {
    instance_destroy();  // Destroy the object
}

image_alpha -= 0.05;