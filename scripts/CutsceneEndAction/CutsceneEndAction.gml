// Always call this script in each cutscene array element
function CutsceneEndAction()
{
	scene++;
	if (scene > array_length_1d(sceneInfo) - 1)
	{
		instance_destroy();
		exit;
	}
	
	event_perform(ev_other, ev_user0);

}