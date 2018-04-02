/// @description Insert description here
// You can write your code in this editor

draw_text(32,64,sprName);

//spr = asset_get_index(string(sprName));

spr = player_down_spr;

draw_text(32,96,string(spr));

draw_sprite_ext(spr,sub_img,x,y,1,1,0,c_white,alpha);

if(last_platform != noone)
{
	draw_text(32,32,string(last_platform.x) + "," + string(last_platform.y));
}

if(doorFound == true)
{
//draw_text(x,y-64,string(door.roomName));
}
