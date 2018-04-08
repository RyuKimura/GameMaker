/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(grappleHook_sprite,0,x,y,1,1,dirRot,c_white,1);

if(target != noone)
{
draw_circle(target.x+(32*lastDir),y,16,true);
}