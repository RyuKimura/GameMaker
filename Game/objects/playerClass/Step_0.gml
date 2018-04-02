/// @description Insert description here
// You can write your code in this editor

sprName = string(character) + string(extra) + string(dir) + "_spr";

key_right = keyboard_check(ord("D"));
key_left = -keyboard_check(ord("A"));
key_up = -keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));


move = key_right + key_left;
climb = key_up + key_down;

sub_img += imgSpd;

if(keyboard_check_pressed(ord("R")))
{
	y = last_platform.y-33;
	x = last_platform.x;
	
	style = "normal";
}

if(style == "climb")
{
	x = ladder.x;
	
	extra = "_climb";
	
	dir = "";
	
	if(keyboard_check_pressed(vk_space))
	{
		dir = "_left";
		
		extra = "_jump";
		
		style = "normal";
		
		vspd = -(jmp_height/1.5);
	}
	
	if(place_meeting(x,y,Ladder_obj))
	{
		y += climb * clmb_spd;
	}
	else
	{
		extra = "";
		
		dir = "_left";
		
		style = "normal";
	}
	
	if(climb != 0)
	{
		imgSpd = 0.25;
	}
	else
	{
		imgSpd = 0;
	}
}

if(style == "enter")
{
	x = door.x;
	
	dir = "";
	
	extra = "_up";
	
	door.status = "open";
	
	if(alpha > 0)
	{
		alpha -= 0.025;
		imgSpd = 0.25;
	}
	
	if(alpha <= 0)
	{
		room_goto(roomIndex);
		style = "exit";
		sub_img = 0;
		imgSpd = 0;
	}
}

if(style == "exit")
{
	x = door.x;
	
	dir = "";
	
	extra = "_down";
	
	if(alpha < 1)
	{
		alpha += 0.025;
		imgSpd = 0.25;
	}
	
	if(alpha >= 1)
	{
		sub_img = 0;
		imgSpd = 0;
		
		dir = "_left";
		style = "normal";
		door.status = "closed";
	}
}

if(style == "normal")
{

	hspd = move * spd;
	
	if(vspd < gravMax)
	{
		vspd += grav;
	}
	
	if(place_meeting(x,y,obj_ladder))
	{
		if(keyboard_check_pressed(ord("W")) || keyboard_check_pressed(ord("S")))
		{
			ladder = instance_place(x,y,obj_ladder);
			style = "climb";
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


	if(place_meeting(x,y+1,wallClass))
	{
		if(place_meeting(x,y,obj_door))
		{
			door = instance_place(x,y,obj_door);
			roomIndex = asset_get_index(door.roomName);
			doorFound = true;
			
			if(keyboard_check_pressed(ord("W")))
			{
				style = "enter";
			}
		}
		else
		{
			doorFound = false;
		}
		
		last_platform = instance_place(x,y+1,wallClass);
		
		extra = "";
		
		if(keyboard_check_pressed(vk_space))
		{
			doorFound = false;
			vspd = -jmp_height;
			extra = "_jump";
		}	
	}
	
	switch(move)
	{
		case -1:
			dir = "_left";
			break;
			
		case 1:
			dir = "_right";
			break;	
	}
	
	if(move != 0)
	{
		imgSpd = 0.25;
	}
	else
	{
		sub_img = 0;
		imgSpd = 0;
	}

	y += vspd;
	x += hspd;
	
	if(y > room_height+32)
	{
		y = last_platform.y-33;
		x = last_platform.x;
	}

}

/*

if(style == "swim")
{
	if(keyboard_check_pressed(vk_space))
	{
		vspd = -swim_height;
		
		if(place_meeting(x,y+8,waterTop_obj))
		{
			vspd = -(swim_height*2);
		}
		
	}
	
	if(vspd < gravSwimMax)
	{
		vspd += gravSwim;
	}
	
	switch(move)
	{
		case -1:
			dir = "_left";
			break;
			
		case 1:
			dir = "_right";
			break;	
	}
	
	if(!place_meeting(x,y,waterClass))
	{
		style = "normal";
		
		//vspd = gravSwimMax;
	}
	
	if(y > room_height+32)
	{
		y = last_platform.y-33;
		x = last_platform.x;
		style = "normal";
	}
	
	hspd = move * spd;
	
	x += (hspd/2);
	
	y += vspd;
}

if(style != "swim")
{
	if(place_meeting(x,y,waterClass))
	{
		style = "swim";
		
		vspd = gravSwimMax;
	}
}

if(place_meeting(x,y,Square))
{
	box = instance_place(x,y,Square);
	instance_destroy(box);
	gameManager.square_count += 1;
}
*/
