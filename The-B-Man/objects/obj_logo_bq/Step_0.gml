// Increment timer (in seconds)
timer += 1 / room_speed;

// Alpha transition logic
if (timer <= 1) {
    // 0 to 1 seconds: Fade in (alpha from 0 to 1)
    alpha = timer / 1; // Gradually increase alpha to 1
} else if (timer > 1 && timer <= 4) {
    // 1 to 4 seconds: Hold (alpha stays at 1)
    alpha = 1;
} else if (timer > 4 && timer <= 5) {
    // 4 to 5 seconds: Fade out (alpha from 1 to 0)
    alpha = 1 - ((timer - 4) / 1); // Gradually decrease alpha to 0
}


// Apply alpha and scale to the object
image_alpha = alpha;          // Set the object's alpha
image_xscale += scale_factor;  // Set the X scale
image_yscale += scale_factor;  // Set the Y scale


if (timer > 6 || keyboard_check(vk_tab)) {
	//instance_create_layer(x, y, "Instances", obj_GameStartup);
	room_goto(rm_SaveFiles)
	instance_destroy();
}