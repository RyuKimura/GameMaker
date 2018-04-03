/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_arrow(x,y,x + checkDistance * sign(moveSpeed), y, 1);
draw_arrow(x,y,x + 32 * sign(moveSpeed), y + 16, 1);
draw_text(0,0,place_meeting(x + 32 * sign(moveSpeed), y + 32, wallClass));
draw_text(0,32,currState);