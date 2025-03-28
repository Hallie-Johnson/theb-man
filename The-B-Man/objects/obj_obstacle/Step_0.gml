/// @description Insert description here
// You can write your code in this editor

if (x < 0) {
    instance_destroy(); // Destroy the object when it goes off-screen
}

if (!global.paused) {
	if (obj_bahamobile.boost) {
		speed = obj_bahamobile.car_speed - 2; // Set object's speed (adjust as needed)
	} else {
		speed = obj_bahamobile.car_speed; // Set object's speed (adjust as needed)
	}
} else {
	speed = 0;	
}


	
if (obj_bahamobile.draw_mission_failed || obj_bahamobile.draw_mission_complete) {
	instance_destroy();	
}