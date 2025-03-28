/// @description Insert description here
// You can write your code in this editor

scale_x = 4;  
scale_y = 4; 

#region Get Height And Positions

sprite_to_draw = BattleIconAttack1; // All sprites have same size

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

sprite_w = sprite_get_width(sprite_to_draw);
sprite_h = sprite_get_height(sprite_to_draw);

y_pos = room_height - 150;
x_pos = (gui_width / 2) - (sprite_w / 2)

#endregion

bahamarang_ctr = ""

animated_sprite = AttackSelect;
animation_speed = 0.15;  // Adjust as needed
animation_frame = 0;    // Current frame of animation

go_animation = spr_GO;
go_animation_speed = 0.15;
go_animation_frame = 0;

attack_pos = x_pos - 67.5

health_warning = 0

bahaman_light_red = #D51400
bahaman_dark_red = #B21000
bahaman_white = #FFFFFF
bahaman_dark_white = #C9C9C9

activate_go = false;