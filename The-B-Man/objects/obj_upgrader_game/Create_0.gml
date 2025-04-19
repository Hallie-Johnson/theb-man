/// @description Insert description here
// You can write your code in this editor

alarm[0] = irandom_range(300, 300); // Random between 5 and 15 seconds at 60 FPS

b_xp_ctr = 0;
collected = false;

move_speed = 5;

xsp = 0
ysp = 0

falling = false;

attacking = false;

hit = false;

resting = false;

death = false;

player_direction = "left";

// idle, attacking, falling, moving, hit, resting, death

hp = 100 + (global.upgrade_wrang_health * 100);
max_hp = hp;

stam = 50;
max_stam = stam;


scale_x = 4;  
scale_y = 4; 


button_animation = 0;


index = 0;

instructions = ["Welcome to the Upgrader Tutorial!\nWhen completing missions, you will encounter B-XP.\nMove around with [WASD] or [Arrow Keys] and collect some B-XP to continue!",
	"In the main hub, click on the icon of your cowl to get to your arsenal.\nYou can spend B-XP to upgrade your arsenal.\nCollect more B-XP to continue.",
	"You can spend B-XP to increase your health, stamina/boost,\nand other specific upgrades to your weapons!\nCollect more B-XP to continue.",
	"Make sure to collect all B-XP in the levels!\nThere are 27 B-XP points to collect (3 in each level)!\nCollect 27 B-XP to complete this tutorial!",
	"Tutorial Completed!\nClick the back button in the top right corner to leave the tutorial."]