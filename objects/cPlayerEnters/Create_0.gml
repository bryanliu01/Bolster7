//This object is for the intro scene of the game

if (!oEventFlag.finishedPlayerEntering) {
	tSceneInfo = [
	[CutsceneInstanceCreate, 0, 0, "Game", oBlack],
	[CutsceneChangeInstanceAndFixFrame, oPlayer, oPlayerCutscene, true, 0, 12, 270],
	[CutsceneMoveCharacter, oPlayerCutscene, 0, 200, true, 1, 3],
	[CutsceneInstanceCreate, 0, 0, "Game", oBlackToWhite],
	[CutsceneInstanceDestroy, oBlack],

	[CutsceneWait, 2],
	[CutsceneInstanceDestroy, oBlackToWhite],

	[CutsceneChangeInstanceAndFixFrame, oPlayerCutscene, oPlayer, true, 0, 12, 270],
	[CutsceneFinishedPlayerEntering]
	]
	;
	
	CreateCutscene(tSceneInfo);
}

instance_destroy();
