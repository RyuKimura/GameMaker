/// @description Insert description here
// You can write your code in this editor

switch(dir)
{
	case 1:
		dirRot = 180;
		lastDir = -1;
		break;
		
	case -1:
		dirRot = 0;
		lastDir = 1;
		break;
}

if(move == true)
{
	limit += spd;
	
	if(place_meeting(x,y,wallClass))
	{
		player.grappleHit = true;
		spd = 0;
		move = false
	}
	
	x += (spd*dir);
	
	time += 1;
	
	if(time >= 1)
	{
		part_emitter_region(ps,es,x,x,y,y,ps_shape_line,ps_distr_linear);
		part_emitter_stream(ps,es,pt,1);
		time = 0;
	}
	
	if(limit >= player.grappleMax)
	{
		player.grappleHit = false;
		player.grappleTime = 0;
		//player.vspd = player.last_vspd
		//player.last_vspd = 0;
		player.state = "normal";
		instance_destroy(self,true);
	}
}