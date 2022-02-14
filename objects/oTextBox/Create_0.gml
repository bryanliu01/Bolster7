
//Text box params
textBoxWidth = 480;
textBoxHeight = 100;
border = 20;
lineSep = 28;
lineWidth = textBoxWidth - border * 2;
textBoxSprite[0] = sTextBoxStretched;
textBoxImage = 0;

//If textbox is animated, have this number equal
//speed of sprite divded by fps of game
textBoxSpeed = 6/60;

//Text Set up
pageNumber = 0;
page = 0;
text[0] = "";
textLength=[0] = string_length(text[0]);
char[0, 0] = "";
charX[0, 0] = 0;
charY[0, 0] = 0;
drawChar = 0;

//Set typewriter speed
textSpeed = 0.8;

//Options for dialogue
option[0] = "";
optionLinkID[0] = -1;
optionPos = 0;
optionNumber = 0;

setup = false;

//Sound - Refer to Payton Burnham part 4 dialogue tutorial 23:50 for array manipulation
//If you want different sound delays per entity
soundDelay = 5; //Number of frames per sound blip
soundCount = soundDelay;

//Effects
SetDefaultsForText();
lastFreeSpace = 0;

//Initiate typewriter pause if certain char are written
textPauseTimer = 0;


cutsceneID = "none";

//Cosmetic set up
tick = 0;
frame = 0;


