/// @description Insert description here
// You can write your code in this editor
if(!place_meeting(x,y+1,wallClass)){
	vspeed += 0.01;
}
else{
	vspeed = 0;
}

if(currState == "Wander"){
	if(!place_meeting(x + 32 * sign(moveSpeed), y + 16, wallClass) || place_meeting(x+1 * sign(moveSpeed),y,wallClass)  ){
		moveSpeed *= -1;
	}
}
