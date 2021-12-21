if (!instance_exists(oCutscene))
{
	if(place_meeting(x,y,oPlayer))
	{
		CreateCutscene(tSceneInfo);
		instance_destroy();
	}
}