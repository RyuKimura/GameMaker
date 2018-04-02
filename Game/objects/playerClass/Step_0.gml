key_right = keyboard_check(ord("D"));
key_left = -keyboard_check(ord("A"));

move = key_right + key_left;

hspd = move * spd;

if(vspd < gravMax)
{
	vspd += grav;
}

if(place_meeting(x,y+1,wallClass))
{
	if(keyboard_check_pressed(ord("W")))
	{
	vspd = jump_height;
	}
}


if(place_meeting(x,y+vspd,wallClass))
{
while(!place_meeting(x,y+sign(vspd),wallClass))
 {
 y += sign(vspd);
 }
 vspd = 0;
}


if(place_meeting(x+hspd,y,wallClass))
{
while(!place_meeting(x+sign(hspd),y,wallClass))
 {
 x += sign(hspd);
 }
 hspd = 0;
}


x += hspd;
y += vspd;

	if(y > room_height+32)
	{
		vspd = 0;
		y = ystart;
		x = xstart;
	}
