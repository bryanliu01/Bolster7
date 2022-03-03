#macro ORANGE 1
#macro RED 2
#macro GREEN 3
#macro BLUE 4

points = 0;
rounds = 4;
roundNumber = 0;
initialiseGame = false;
gameIsPlaying = false;

numberOfColours = 3;
colourArray = array_create(numberOfColours);
pressArray = array_create(numberOfColours);

currentElement = 0;

nextRound = false;

baseTime = 0.7;
timeReduction = 0.1;

tSceneInfo[0] = -1;

image_index = 0;
image_speed = 0;

function MainOfficeDeskDefault() {

	points = 0;
	rounds = 4;
	roundNumber = 0;
	initialiseGame = false;
	gameIsPlaying = false;

	numberOfColours = 3;
	colourArray = array_create(numberOfColours);
	pressArray = array_create(numberOfColours);

	currentElement = 0;

	nextRound = false;

	baseTime = 0.7;
	timeReduction = 0.1;

	tSceneInfo[0] = -1;

	image_index = 0;
	image_speed = 0;
}
