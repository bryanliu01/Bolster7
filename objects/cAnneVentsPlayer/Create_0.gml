//This object is for the intro scene of the game
//Intended room, rMSReceptionHallway
if (oEventFlag.finishedArkBriefsPlayer && !oEventFlag.finishedAnneVentingPlayer) {
	tSceneInfo = [
	[CutsceneCreateInstanceAndFixFrame, 320, 288, npcAnneCutscene, 0, 13, 270],
	[CutsceneMoveCharacter, npcAnneCutscene, 0, 32, true, 2, 135],
	[CutsceneWait, 1],
	[CutsceneFixFrame, npcAnneCutscene, 0, 5, 45],
	
	//TODO make Anne Theme, motif to mother spaceship theme

	[CutsceneCreateTextBox, "MS - anne vents player"],
	[CutsceneCheckTextBoxExists],
	[CutsceneMoveCharacter, npcAnneCutscene, 0, 400, true, 2, 135],

	[CutsceneFinishedAnneVentingPlayer]
	]
	;
	
	CreateCutscene(tSceneInfo);
}

instance_destroy();
