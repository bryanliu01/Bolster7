/// @desc Pause the Game

if (keyboard_check_pressed(ord("C")))
{
	//Inverts the game paused state, when key is pressed
	global.GamePaused = !global.GamePaused;
	
	if (global.GamePaused)
	{
		with (all)
		{
			GamePausedImageSpeed = image_speed;
			image_speed = 0;
		}
	}
	else
	{
		with (all)
		image_speed = GamePausedImageSpeed;
	}

}