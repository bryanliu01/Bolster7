///@arg Object
///@arg imagespeed


function CutsceneChangeImageSpeed(obj, spd)
{
	
	with (obj)
	{
		image_speed = spd;
	}
	CutsceneEndAction();

}