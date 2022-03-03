#macro PROCESS 10
#macro GENERALMENU 0
#macro ATTACKMENU 1
#macro SKILLMENU 3
#macro TARGETINGMENU 2

test = 0;

width = 0;
height = 0;

//width between the word and the menu border
wordBorder = 8;

//Length between each word in menu
wordSpace = 22;

//Length between each line of text in info menu with font fGUI
infoSpace = 12;

markerPosition = 0;

baseUI = layer_get_id("BaseUI");


allowInput = false;

optionLength = 0;

global.menuLayer = 0;

hide = false;


energyToDeduct = 0;
skillToDeduct = 0;
healthToDeduct = 0;
target = 0;
sequenceName = noone;
macroState = noone;
sequenceStartPos = 0
performScript = 0;



//Menu Layer: -1
//Process 
option[PROCESS,0] = "No one";

//Menu layer: 0
//General Buttons
option[GENERALMENU,0] = "Attack";
option[GENERALMENU,1] = "Skills";
option[GENERALMENU,2] = "Defend";
option[GENERALMENU,3] = "Items";
option[GENERALMENU,4] = "Retreat";

//Menu layer: 1
//Attack Menu
count = 0;

//Added basic moves to ATTACKMENU
for (var i = 0; i < ds_list_size(oItemManager.basicMoveList); i++) {
	
	//Check if in the basic move list, the move is actually basic
	if (oItemManager.basicMoveList[| i].category == BASIC) {
		option[ATTACKMENU, count] = oItemManager.basicMoveList[| i];
		count++;
	}
}

count = 0;
//Added skill moves to SKILLMENU
for (var i = 0; i < ds_list_size(oItemManager.skillMoveList); i++) {
	
	//Check if in the basic move list, the move is actually basic
	if (oItemManager.skillMoveList[| i].category == SKILLS) {
		option[SKILLMENU, count] = oItemManager.skillMoveList[| i];
		count++;
	}
}


//Menu layer: 2
//Targeting Attack Menu
//Update this array in the step event with a list of 
//available targets
option[TARGETINGMENU,0] = "No one";


