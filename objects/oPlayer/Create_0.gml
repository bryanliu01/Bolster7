state = PlayerStateFree;
LastState = state;

// Reach a particular layer in the room and grab tile map id
CollisionMap = layer_tilemap_get_id(layer_get_id("Col"));

image_speed = 0;
HSpeed = 0;
VSpeed = 0;
SpeedWalk = 5.0;

SpriteRun = sPlayerRun;
SpriteIdle = sPlayer;
LocalFrame = 0;

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

