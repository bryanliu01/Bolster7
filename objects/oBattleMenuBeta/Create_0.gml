#macro PROCESS 10
#macro GENERALMENU 0
#macro ATTACKMENU 1
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


allowInput = true;

optionLength = 0;

global.menuLayer = 0;


energyToDeduct = 0;
target = 0;
sequenceName = noone;
macroState = noone;
sequenceStartPos = 0
performScript = 0;

//**ATTACK COSTS**//
attackCostEnergy = 1;
attackCostSkill = 0;

//**STRUCTS**//
doublePunch = {
	name : "Double Punch",
	energyCost : 1,
	skillCost : 0,
	healthCost : 0,
	info : "Strike the enemy with two forceful hits."
};
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
option[ATTACKMENU,0] = doublePunch.name;

//Menu layer: 2
//Targeting Attack Menu
//Update this array in the step event with a list of 
//available targets
option[TARGETINGMENU,0] = "No one";


