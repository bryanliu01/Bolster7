for (var i = 0; i < array_length(colourArray); i++) {
	//Randomly assign colours to colourArray for the minigame.
	colourArray[i] = irandom_range(1,4);
}
	
//Set up tSceneInfo to be executed by cutscene object.
for (var i = 0; i < 5 * array_length(colourArray); i = i + 5) {
	tSceneInfo[i]	  = [CutsceneWait, baseTime - roundNumber * timeReduction];
	tSceneInfo[i + 1] = [CutsceneDisplayDeskColour, i/5];
	tSceneInfo[i + 2] = [CutscenePlayDeskSound];
	tSceneInfo[i + 3] = [CutsceneWait, baseTime - roundNumber * timeReduction];
	tSceneInfo[i + 4] = [CutsceneDisplayDeskColour, -1];	
}

while (array_length(tSceneInfo) > 5 * array_length(colourArray)) {
	array_pop(tSceneInfo);
}

