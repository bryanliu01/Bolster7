for (var i = 0; i < array_length(colourArray); i++) {
	//Randomly assign colours to colourArray for the minigame.
	colourArray[i] = irandom_range(1,4);
}
	
//Set up tSceneInfo to be executed by cutscene object.
for (var i = 0; i < 4 * array_length(colourArray); i = i + 4) {
	tSceneInfo[i] = [CutsceneDisplayDeskColour, i/4];
	tSceneInfo[i + 1] = [CutsceneWait, baseTime - roundNumber * timeReduction];
	tSceneInfo[i + 2] = [CutsceneDisplayDeskColour, -1];
	tSceneInfo[i + 3] = [CutsceneWait, baseTime - roundNumber * timeReduction];
}


