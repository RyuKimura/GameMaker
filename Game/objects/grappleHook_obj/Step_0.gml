/// @description Insert description here
// You can write your code in this editor

if(move == true)
{
	if(place_meeting(x,y,wallClass))
	{
		player.grappleHit = true;
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
}