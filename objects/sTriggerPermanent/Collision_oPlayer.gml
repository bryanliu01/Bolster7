if (!instance_exists(oCutscene))
{
	if(place_meeting(x,y,oPlayer))
	{
	CutsceneMoveCharacter(oPlayer, 39, 151, false, 1);
	CutscenePlaySound(vDefault, 10, false);
	CutsceneInstanceCreate(39, 151, "Game", npcEduard);
	CutsceneWait(4);
	CutsceneInstanceDestroy(npcEduard)
	CutsceneMoveCharacter(oPlayer, 40, 40, true, 1)
	}
}