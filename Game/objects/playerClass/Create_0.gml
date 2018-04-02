/// @description Insert description here
// You can write your code in this editor

// Speed Variables
spd = 4;
clmb_spd = 2;
jmp_height = 6;
swim_height = 3;

hspd = 0;
vspd = 4;

move = 0;
grav = 0.25;
gravSwim = 0.1;

gravMax = 7;

gravSwimMax = 1

// Styles

style = "normal";

last_platform = noone;

doorFound = false;

roomIndex = 0;

sub_img = 0;

imgSpd = 0;

spr_indx = player_down_spr;

// Draw

alpha = 1;

character = "explorer";

extra = "";

dir = "_left";

spr = "";

sprName = string(character) + string(extra) + string(dir) + "_spr";
