key_right = keyboard_check(ord("D"));
key_left = -keyboard_check(ord("A"));

move = key_right + key_left;

hspd = move * spd;

x += hspd;