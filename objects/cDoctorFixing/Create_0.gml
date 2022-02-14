//This object is for the intro scene of the game

if (!oEventFlag.finishedDoctorFixing) {
	tSceneInfo = [

	//[CutsceneChangeInstanceAndFixFrame, oPlayer, oPlayerCutscene, true, 0, 12, 270],

	[CutsceneWait, 2],

	[CutsceneCreateTextBox, "MS - doctor fixing"],
	[CutsceneCheckTextBoxExists],
	//Tink notices the player in the room
	[CutsceneInstanceChange, npcTinkFixing, npcTinkIdleUp], //Change this once npcTink has a full set of sprites
	[CutsceneWait, 1],
	[CutsceneCreateTextBox, "MS - doctor fixing 2"],
	[CutsceneCheckTextBoxExists],
	[CutsceneChangeInstanceAndFixFrame, oPlayer, oPlayerCutscene, true, 0, 12, 270],
	[CutsceneMoveCharacter, oPlayerCutscene, 0, 90, true, 1, 3],
	[CutsceneCreateTextBox, "MS - doctor fixing 3"],
	[CutsceneCheckTextBoxExists],
	[CutsceneInstanceChange, npcTinkIdleUp, npcTinkFixing],
	[CutsceneChangeInstanceAndFixFrame, oPlayerCutscene, oPlayer, false, 0, 12, 270],
	[CutsceneFinishedDoctorFixing]
	]
	;
	
	CreateCutscene(tSceneInfo);
}

instance_destroy();
