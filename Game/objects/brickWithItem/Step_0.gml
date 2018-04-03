/// @description Insert description here
// You can write your code in this editor
if(playerClass.vspd < 0 && position_meeting(x,y+32,playerClass) && activated == false){
	instance_create_depth(x,y-32,0,coin);
	activated = true;
}