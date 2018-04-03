/// @description Insert description here
// You can write your code in this editor


//if(collision_line(x,y,x + checkDistance * sign(moveSpeed),y,playerClass,0,0)){
//	currState = "Chase";
//}

switch (currState) {
    case "Wander":
        hspeed = moveSpeed;
        break;
	case "Chase":
	var dir = point_direction(x,y,playerClass.x,playerClass.y);
		if(dir < 90 && dir > 270){
			hspeed = -moveSpeed;
		}
		else if(dir > 90 && dir < 270){
			hspeed = moveSpeed;
		}		
		break;
    default:
        show_message("FUCKED");
        break;
}