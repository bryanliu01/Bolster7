state = PlayerStateFree;
lastState = state;

// Reach a particular layer in the room and grab tile map id
CollisionMap = layer_tilemap_get_id(layer_get_id("Col"));

image_speed = 0;


HSpeed = 0;
VSpeed = 0;
SpeedWalk = 3.0;

spriteRun = sPlayerRun;
spriteIdle = sPlayer;


localFrame = 0;

if (global.targetX != -1)
{
	x = global.targetX;
	y = global.targetY;
	direction = global.targetDirection;
	
}
//Collision Check Setup
Radius = 16;
ActiveTextBox = noone;

//Override frame
override = false;
