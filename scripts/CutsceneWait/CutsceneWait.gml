///@desc Allows Cutscene to wait that many seconds
///@arg seconds
function CutsceneWait(seconds)
{
	timer++;
	
	if (timer >= seconds * room_speed)
	{
		timer = 0;
		CutsceneEndAction();
	}
		
}