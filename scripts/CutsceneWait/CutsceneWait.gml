///@desc Allows Cutscene to wait that many seconds
///@arg seconds
function CutsceneWait()
{
	Timer++;
	
	if (Timer >= argument0 * room_speed)
	{
		Timer = 0;
		CutsceneEndAction();
	}
		
}