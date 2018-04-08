/// @description Insert description here
// You can write your code in this editor
spd = 0;

dir = 0;

target = noone;

move = true;

lastDir = 0;

dirRot = 0;

time = 0;

limit = 0;

//timeMax = ;

ps = part_system_create();
pt = part_type_create();
es = part_emitter_create(ps);

part_type_sprite(pt,grappleHookRope_sprite,false,false,false);
part_type_scale(pt,0.5,0.5);
