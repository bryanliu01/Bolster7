if (initialiseGame) {
	
	//Create number of colours to enter in sequence
	//Initially start off as 3, each round increments the number of colours
	//Until there is 6 colours at round 4
	colourArray = array_create(numberOfColours);
	
	//Create Cutscene
	event_user(0);
	
	//Execute Cutscene
	event_user(1);

	initialiseGame = false;
	
}

//Prepare for next round
if (nextRound) {
	nextRound = false;
	
	tSceneInfo = array_create(0);
	numberOfColours++;
	roundNumber++;
}

if (roundNumber >= rounds) {
	textID = "MS - the desk can not be activated again";
}

depth = -bbox_bottom;