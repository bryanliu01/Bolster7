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

if (global.TargetX != -1)
{
	x = global.TargetX;
	y = global.TargetY;
	direction = global.TargetDirection;
	
}
//Collision Check Setup
Radius = 16;
ActiveTextBox = noone;

//Textbox Setup
Portrait = talkPlayer;
PortraitIndex = 0;
Voice = vDefault;
Name = "Player";

