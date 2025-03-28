/// @description Insert description here
// You can write your code in this editor

y = obj_bahamobile.y;
x = obj_bahamobile.x;

lanes = [y - 60, y, y + 60]; // Replace 'y' with the central position of your lanes
spawn_interval = ((-0.5 * obj_bahamobile.car_speed) + 3.5) + obj_bahamobile.car_speed // Seconds
alarm[0] = spawn_interval * room_speed; // Convert seconds to frames


//show_debug_message("Spawn Interval: " + string(spawn_interval));


/*
car speed = -3, -4, -5

spawn_interval = 2, 1.5, 1


-0.5x + 3.5

5 - 3 = 2

5.5 - 4 = 1.5

6 - 5 = 1

*/