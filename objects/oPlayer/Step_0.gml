// Gets Player Input
KeyLeft = keyboard_check(vk_left);
KeyRight = keyboard_check(vk_right);
KeyUp = keyboard_check(vk_up);
KeyDown = keyboard_check(vk_down);
KeyActivate = keyboard_check_pressed(ord("Z"));
KeyOther = keyboard_check_pressed(ord("X"));
KeyItem = keyboard_check_pressed(ord("C"));

InputDirection = point_direction(0,0,KeyRight-KeyLeft,KeyDown-KeyUp);
InputMagnitude = (KeyRight - KeyLeft != 0) || (KeyDown - KeyUp != 0);

if (!global.GamePaused) 
{
	if (!instance_exists(oCutscene) &&
		!instance_exists(oTextBoxBeta) &&
		!instance_exists(oTextBoxEntity))
	{
	script_execute(state);
	}
}

if (instance_exists(oCutscene))
{
	image_index = 0;
}

if (!instance_exists(oAlpha)) {
	depth = -bbox_bottom;
}
