// Always call this script in each cutscene array element
function CutsceneEndAction()
{
	Scene++;
	if (Scene > array_length_1d(SceneInfo) - 1)
	{
		instance_destroy();
		exit;
	}
	
	event_perform(ev_other, ev_user0);

}