//This object is for the intro scene of the game

if (!oEventFlag.finishedArkBriefsPlayer) {
	tSceneInfo = [
	[CutsceneChangeInstanceAndFixFrame, npcArk, npcArkCutscene, true, 0, 5, 90],
	[CutsceneWait, 1],
	[CutscenePlayMusic, bgmArkTheme, true],
	[CutsceneChangeInstanceAndFixFrame, oPlayer, oPlayerCutscene, true, 0, 4, 90],
	[CutsceneMoveCharacter, oPlayerCutscene, 0, -80, true, 2, 45],
	[CutsceneMoveCharacter, oPlayerCutscene, -128, 0, true, 2, 90],
	[CutsceneMoveCharacter, oPlayerCutscene, 0, -144, true, 2, 45],
	[CutsceneMoveCharacter, oPlayerCutscene, 64, 0, true, 2, 0],
	[CutsceneFixFrame, oPlayerCutscene, 0, 5, 90],
	
	[CutsceneCreateTextBox, "MS - ark briefs player"],
	[CutsceneCheckTextBoxExists],
	
	[CutsceneChangeInstanceAndFixFrame, npcArkPaging, npcArkCutscene, true, 0, 13, 270],
	[CutsceneWait, 2],
	[CutsceneInstanceCreate, 320, 400, "Player", npcAnneCutscene],
	[CutsceneMoveCharacter, npcAnneCutscene, 0, -150, true, 2, 45],
	[CutsceneMoveCharacter, npcAnneCutscene, 128, 0, true, 2, 0],
	[CutsceneMoveCharacter, npcAnneCutscene, 0, -134, true, 2, 45],
	[CutsceneFixFrame, npcAnneCutscene, 0, 9, 180],
	
	[CutsceneCreateTextBox, "MS - ark briefs player 2"],
	[CutsceneCheckTextBoxExists],
	
	
	[CutsceneChangeInstanceAndFixFrame, oPlayerCutscene, oPlayer, false, 0, 1, 0],
	[CutsceneChangeInstanceAndFixFrame, npcArkCutscene, npcArk, false, 0, 13, 270],
	[CutsceneChangeInstanceAndFixFrame, npcAnneCutscene, npcAnne, false, 0, 13, 270],
	[CutsceneChangeTextID, npcArk, "MS - maintenance work"],
	[CutsceneChangeTextID, npcAnne, "MS - anne silent treatment"],
	
	[CutsceneFinishedArkBriefsPlayer]
	]
	;
	
	CreateCutscene(tSceneInfo);
}

instance_destroy();
