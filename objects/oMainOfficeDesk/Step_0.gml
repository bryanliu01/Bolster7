if (initialiseGame) {
	currentElement = 0;
	gameIsPlaying = true;
	//Create number of colours to enter in sequence
	//Initially start off as 3, each round increments the number of colours
	//Until there is 6 colours at round 4
	
	
	
	//Create Cutscene
	event_user(0);
	
	//Execute Cutscene
	event_user(1);

	initialiseGame = false;
	
}

if (currentElement >= array_length(colourArray)) {
	nextRound = true;
}

//Prepare for next round
if (nextRound) {
	
	
	tSceneInfo = array_create(0);
	roundNumber++;
	numberOfColours = 3 + roundNumber;
	initialiseGame = true;
	nextRound = false;
	
	colourArray = array_create(numberOfColours);
	pressArray = array_create(numberOfColours);
}



if (roundNumber >= rounds) {
	nextRound = false;
	initialiseGame = false;
	MainOfficeDeskDefault();
	FinishedMainOfficeDeskMiniGame();
	
	//TODO drop reward from sky
	
	textID = "MS - the desk can not be activated again";
}

depth = -bbox_bottom;

if (!oEventFlag.finishedMainOfficeDeskMiniGame && room = rMSMainOffice) {
	if (!gameIsPlaying) textID = "MS - activate the desk?";
	else textID = "MS - reset the desk?";
}
else if (oEventFlag.finishedMainOfficeDeskMiniGame && room = rMSMainOffice) {
	textID = "MS - desk game completed";
}

if (instance_exists(oTextBox)) {
	image_index = 0;
	image_speed = 0;
}