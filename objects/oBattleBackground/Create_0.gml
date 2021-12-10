//This object mimics a moving horizon by animating lines in a pseudo 3d plane.
//1. There are two points which creates a line that travels across the screen.
//	 The two points travel at different speeds which creates a 3d horizon plane effect
//2. The background will have lights travelling from the top and from the bottom converging
//	 and fading in the middle

//Number of lines to appear in background
numLines = 12;

//planeSpreadFactor
planeSpreadFactor = 2;

//The distance needed for the top point to travel before resetting
startTravelDistanceX = ((RESOLUTIONW * planeSpreadFactor) / numLines)

//The distance needed for the bottom point to travel before resetting
endTravelDistanceX = (RESOLUTIONW / numLines);

//**LEADER LINE**//
//All drawn lines will be dependent on these two lines
//Center startX to screen by offsetting it
startLeaderLineX = startTravelDistanceX - RESOLUTIONW/planeSpreadFactor;
endLeaderLineX = endTravelDistanceX;

startReverseLeaderLineX = 0;
endReverseLeaderLineX = 0;

//Reset position of lines after travelling distance
startResetPosX = startLeaderLineX;
endResetPosX = endLeaderLineX;

//Y position is offset by centre of background
startLeaderLineY = 0 - 127;
endLeaderLineY = RESOLUTIONH/2 - 59;

bottomStartLeaderY = RESOLUTIONH;
bottomEndLeaderY = RESOLUTIONH - 229;

//Create Y positions for horizontal lines using bottom side of horizon.
//Top side of horizon is smaller and thus can be mimicked.
horizontalTopY = endLeaderLineY + 9;
horizontalMiddleY = bottomEndLeaderY - 7;

baseSpacing = 8;


//Edit how fast the lines move across the horizon
timeScale = 2;
time = timeScale;