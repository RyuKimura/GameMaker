/// @description Insert description here
// You can write your code in this editor
if(collision_line(x,y,x + checkDistance * direction,y,playerClass,0,0)){
	currState = "Chase";
}

switch (currState) {
    case "Wander":
        // code here
        break;
	case "Chase":
	
		break;
    default:
        // code here
        break;
}