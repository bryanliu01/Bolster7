// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PauseGame()
{
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