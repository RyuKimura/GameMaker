draw_sprite(skeleton_sprite,0,x,y);

draw_text(32,32,"hspd = " + string(hspd) + " | vspd = " + string(vspd));
draw_text(32,64,"v_collision = " + string(v_collision));
draw_text(32,96,"h_collision = " + string(h_collision));

draw_arrow(x,y,x+(lastDir * grappleDist),y,16);

draw_line_color(x,y,x+(lastDir * grappleMax),y,c_green,c_green);

draw_text(32,128,string(grappleTime));

if(grappleWall != noone)
{
	draw_text(grappleWall.x-36,grappleWall.y-40,"(" + string(grappleWall.x) + "," + string(grappleWall.y) + ")"); 
	draw_rectangle_color(grappleWall.x+((grappleWall.sprite_width/2)*grappleDir),grappleWall.y-(grappleWall.sprite_height/2),grappleWall.x+((grappleWall.sprite_width*1.5)*grappleDir),grappleWall.y+(grappleWall.sprite_height/2),c_red,c_red,c_red,c_red,true);
}