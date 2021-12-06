width = 84;
height = 0;

//width between the word and the menu border
wordBorder = 8;

//Length between each word in menu
wordSpace = 16;

markerPosition = 0;


//Menu layer: 0
//General Buttons
option[0,0] = "Attack";
option[0,1] = "Skills";
option[0,2] = "Items";
option[0,3] = "Defend";

//Menu layer: 1
//Targeting Attack Menu
//Update this array in the step event with a list of 
//available targets
option[1,0] = "No one";

allowInput = true;

optionLength = 0;

menuLayer = 0;

//**ATTACK COSTS**//
attackCostEnergy = 1;
attackCostSkill = 0;
