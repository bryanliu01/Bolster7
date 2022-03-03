if (!oEventFlag.finishedAnneTrainingIntro) {
tSceneInfo = [
	[CutsceneEnabledPlayerPunching],
	[CutsceneCreateInstanceAndFixFrame, 480, 224, npcAnneCutscene, 0, 9, 180],
	
	[CutsceneWait, 1],
	
	[CutsceneChangeInstanceAndFixFrame, oPlayer, oPlayerCutscene, true, 0, 1, 0],
	[CutsceneMoveCharacter, oPlayerCutscene, 200, 0, true, 2, 0],
	[CutsceneCreateTextBox, "MS - anne trains player"],
	[CutsceneCheckTextBoxExists],
	[CutsceneMoveCharacter, npcAnneCutscene, 0, -92, true, 2, 45],
	//ButtonSFXCutscene
	[CutsceneInstanceCreate, 352, -84, "Player", npcTrainingBot],
	//FallingSFX
	[CutsceneMoveObject, npcTrainingBot, 0, 242, true, 4, 0],
	[CutsceneChangeImageSpeed, npcTrainingBot, 1],
	[CutsceneMoveCharacter, npcAnneCutscene, 0, 92, true, 2, 135],
	[CutsceneFixFrame, npcAnneCutscene, 0, 9, 180],
	[CutsceneCreateTextBox, "MS - anne trains player 2"],
	[CutsceneCheckTextBoxExists],
	
	[CutsceneFinishedAnneTrainingIntro],
	
	[CutsceneChangeInstanceAndFixFrame, npcAnneCutscene, npcAnne, true, 0, 9, 180],
	[CutsceneChangeTextID, npcAnne, "MS - anne trains player 3"],
	[CutsceneChangePunchScript, npcAnne, "MS - punch anne training room"],
	[CutsceneChangePunchScript, npcTrainingBot, "MS - summon training bot"],
	
	[CutsceneChangeInstanceAndFixFrame, oPlayerCutscene, oPlayer, false, 0, 1, 0],

	];

	CreateCutscene(tSceneInfo);


}
instance_destroy();