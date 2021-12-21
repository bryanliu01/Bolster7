
//Text box params
textBoxWidth = 480;
textBoxHeight = 100;
border = 20;
lineSep = 28;
lineWidth = textBoxWidth - border * 2;
textBoxSprite = sTextBoxStretched;
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
textSpeed = 1;

//Options for dialogue
option[0] = "";
optionLinkID[0] = -1;
optionPos = 0;
optionNumber = 0;

setup = false;

//Effects
SetDefaultsForText();
lastFreeSpace = 0;


