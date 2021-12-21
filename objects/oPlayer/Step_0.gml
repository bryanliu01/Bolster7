// Gets Player Input
KeyLeft = keyboard_check(vk_left);
KeyRight = keyboard_check(vk_right);
KeyUp = keyboard_check(vk_up);
KeyDown = keyboard_check(vk_down);
keyActivate = keyboard_check_pressed(ord("Z"));
KeyOther = keyboard_check_pressed(ord("X"));
KeyItem = keyboard_check_pressed(ord("C"));

inputDirection = point_direction(0,0,KeyRight-KeyLeft,KeyDown-KeyUp);
inputMagnitude = (KeyRight - KeyLeft != 0) || (KeyDown - KeyUp != 0);

if (!global.GamePaused) 
{
	if (!instance_exists(oCutscene) &&
		!instance_exists(oTextBoxBeta) &&
		!instance_exists(oTextBoxEntity))
	{
		lastState = state;
		state = PlayerStateFree;
	}
}

if (instance_exists(oCutscene) 
|| instance_exists(oTextBoxBeta) 
|| instance_exists(oTextBoxEntity)
|| instance_exists(oTextBox))
{
	//sprite_index = spriteIdle;
	//var _CardinalDirection = round(direction/90);
	//var _TotalFrames = sprite_get_number(sprite_index) / 4;
	//image_index = (_CardinalDirection * _TotalFrames);
	state = PlayerStateLocked;
	
	
}

depth = -bbox_bottom;


script_execute(state);
