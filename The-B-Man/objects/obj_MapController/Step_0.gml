/// @description Insert description here
// You can write your code in this editor

#region Map 1

if ((mouse_x >= map1.obj_left && mouse_x <= map1.obj_right && mouse_y >= map1.obj_top && mouse_y <= map1.obj_bottom)) {
	map1.image_xscale += 0.25;
	map1.image_yscale += 0.25;
}
else {
	map1.image_xscale -= 0.25;
    map1.image_yscale -= 0.25;
}

if ((map1.image_xscale > 3 and map1.image_yscale > 3) or map1.selected) {
    map1.image_xscale = 3;
	map1.image_yscale = 3;
}

if ((map1.image_xscale < 2 and map1.image_yscale < 2) or (map2.selected or map3.selected)) {
    map1.image_xscale = 2;
	map1.image_yscale = 2;
}

#endregion

#region Map 2

if ((mouse_x >= map2.obj_left && mouse_x <= map2.obj_right && mouse_y >= map2.obj_top && mouse_y <= map2.obj_bottom)) {
	map2.image_xscale += 0.25;
	map2.image_yscale += 0.25;
}
else {
	map2.image_xscale -= 0.25;
    map2.image_yscale -= 0.25;
}

if ((map2.image_xscale > 3 and map2.image_yscale > 3) or map2.selected) {
    map2.image_xscale = 3;
	map2.image_yscale = 3;
}

if ((map2.image_xscale < 2 and map2.image_yscale < 2) or (map1.selected or map3.selected)) {
    map2.image_xscale = 2;
	map2.image_yscale = 2;
}

#endregion

#region Map 3

if ((mouse_x >= map3.obj_left && mouse_x <= map3.obj_right && mouse_y >= map3.obj_top && mouse_y <= map3.obj_bottom)) {
	map3.image_xscale += 0.25;
	map3.image_yscale += 0.25;
}
else {
	map3.image_xscale -= 0.25;
    map3.image_yscale -= 0.25;
}

if ((map3.image_xscale > 3 and map3.image_yscale > 3) or map3.selected) {
    map3.image_xscale = 3;
	map3.image_yscale = 3;
}

if ((map3.image_xscale < 2 and map3.image_yscale < 2)or (map2.selected or map1.selected)) {
    map3.image_xscale = 2;
	map3.image_yscale = 2;
}

#endregion

// show_debug_message(string(map1.selected) + string(map2.selected) + string(map3.selected))


if (keyboard_check(vk_numpad1)) {
	room_goto(rm_Battle4);
} 

if (keyboard_check(vk_numpad2)) {
	room_goto(rm_Road4);
} 

if (keyboard_check(vk_numpad3)) {
	room_goto(rm_Air4);
} 