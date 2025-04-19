/// @description Insert description here
// You can write your code in this editor

other.hp -= 100;

var nearest = instance_nearest(x, y, obj_mech_respawn_point);

if (instance_exists(nearest)) {
    var target_x = nearest.x;
    var target_y = nearest.y;

    other.x = target_x;
	other.y = target_y;
}

other.effect_hit = 0.5;