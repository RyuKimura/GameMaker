key_right = keyboard_check(ord("D"));
key_left = -keyboard_check(ord("A"));
key_up = -keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));

move = key_right + key_left;
climb = key_up + key_down;

hspd = move * spd;

if(keyboard_check_pressed(ord("R")))
{
	room_restart();
}

if(state == "climb")
{
	x = ladder.x;
	
	if(keyboard_check_pressed(vk_space))
	{
		
		state = "normal";
		
		vspd = -(jump_height/1.5);
	}
	
	if(place_meeting(x,y,obj_ladder))
	{
		y += climb * climb_spd;
	}
	else
	{
		state = "normal";
	}
}


if(state = "normal")
{

	if(vspd < gravMax)
	{
		vspd += grav;
	}

	if(place_meeting(x,y,obj_ladder))
	{
		if(keyboard_check_pressed(ord("W")) || keyboard_check_pressed(ord("S")))
		{
			ladder = instance_place(x,y,obj_ladder);
			state = "climb";
		}
	}


	if(place_meeting(x,y+1,wallClass))
	{
		if(keyboard_check_pressed(vk_space))
		{
		vspd = jump_height;
		}
		
		if(place_meeting(x,y+1,obj_hPlatform))
		{
			platform = instance_place(x,y+1,obj_hPlatform);

			x += platform.dirType;
		}
		
		if(place_meeting(x,y+1,obj_vPlatform))
		{
			platform = instance_place(x,y+1,obj_vPlatform);
			
			y += platform.dirType;
		}
	}
	
	
	if(place_meeting(x,y+vspd,wallClass))
	{
	 collision = true;
	while(!place_meeting(x,y+sign(vspd),wallClass))
	 {
	 y += sign(vspd);
	 }
	 vspd = 0;
	}
		else
	{
		collision = false;
	}

	
	
	if(place_meeting(x+hspd,y,wallClass))
	{
	 collision = true;
	while(!place_meeting(x+sign(hspd),y,wallClass))
	 {
	 x += sign(hspd);
	 }
	 hspd = 0;
	}
	else
	{
		collision = false;
	}


x += hspd;
y += vspd;

}

if(y > room_height+32)
{
	vspd = 0;
	y = ystart;
	x = xstart;
}
