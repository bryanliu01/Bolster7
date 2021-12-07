//This object mimics a moving horizon by animating lines in a pseudo 3d plane.
//1. There are two points which creates a line that travels across the screen.
//	 The two points travel at different speeds which creates a 3d horizon plane effect
//2. The background will have lights travelling from the top and from the bottom converging
//	 and fading in the middle

//Number of lines to appear in background
numLines = 12;

//planeSpreadFactor
planeSpreadFactor = 3;

//The distance needed for the top point to travel before resetting
startTravelDistanceX = ((RESOLUTIONW * planeSpreadFactor) / numLines)

//The distance needed for the bottom point to travel before resetting
endTravelDistanceX = (RESOLUTIONW / numLines);


startVerticalPos = 0;
endVerticalPos = RESOLUTIONH - 20;

//**LEADER LINE**//
//All drawn lines will be dependent on these two lines
//Center startX to screen by offsetting it
startLeaderLineX = startTravelDistanceX - RESOLUTIONW/planeSpreadFactor;
endLeaderLineX = endTravelDistanceX;


//TODO
//Create merging lights                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    