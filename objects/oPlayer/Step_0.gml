//In case of changing instances and create event is NOT triggered,
//Have the default values here.

spriteRun = sPlayerRun;
spriteIdle = sPlayer;

Radius = 16;

// Gets Player Input
KeyLeft = keyboard_check(vk_left);
KeyRight = keyboard_check(vk_right);
KeyUp = keyboard_check(vk_up);
KeyDown = keyboard_check(vk_down);
keyActivate = keyboard_check_pressed(ord("Z"));
KeyOther = keyboard_check_pressed(ord("X"));
KeyItem = keyboard_check_pressed(ord("C"));


lastState = state;

if (!override) {
	StateConditions();
}


/*
if (!global.GamePaused) 
{
	if (!instance_exists(oCutscene) &&
		!instance_exists(oTextBoxBeta) &&
		!instance_exists(oTextBoxEntity))
	{
		lastState = state;
		state = PlayerStateFree;
	}
	
	if (instance_exists(oCutscene) 
	|| instance_exists(oTextBoxBeta) 
	|| instance_exists(oTextBoxEntity)
	|| instance_exists(oTextBox))
	{
		state = PlayerStateLocked;
	
	
	}
	
	if (instance_exists(oTransition)) {
		state = PlayerStateTransition;
	}
}
*/
	





depth = -bbox_bottom;


script_execute(state);
