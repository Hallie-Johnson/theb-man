/// @description Insert description here
// You can write your code in this editor

image_xscale = 10;
image_yscale = image_xscale;

depth = -1000;



// Speed of movement (tweak this value for faster/slower movement)
move_speed = 0.20;

//room_width/2 - 500, room_height/2 - 50

x_pos = [room_width/2 - 500, room_width/2, room_width/2 + 500];
y_pos = [room_height/2 - 50, room_height/2 - 50, room_height/2 - 50];

level_select = 0;

// Initialize target positions to the current position
target_x = x_pos[level_select];
target_y = y_pos[level_select];

clue_ctr = 0;