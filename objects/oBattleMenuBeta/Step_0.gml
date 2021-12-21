up = keyboard_check_pressed(vk_up);
down = keyboard_check_pressed(vk_down);
acceptKey = keyboard_check_pressed(ord("Z"));
returnKey = keyboard_check_pressed(ord("X"));

//Store number of options in current menu
optionLength = array_length(option[global.menuLayer]);

markerPosition += down - up;

if (markerPosition >= optionLength) markerPosition = 0;
if (markerPosition < 0) markerPosition = optionLength - 1;

if (acceptKey && allowInput) {
	
	var _startingLayer = global.menuLayer;
	switch (global.menuLayer) {
		
	//General Actions
	case GENERALMENU:	
		switch (markerPosition){
			//Attack is selected
			//Move to Attack menu
			case 0:
				global.menuLayer = ATTACKMENU;
				break;
	
			//Skills is selected
			//Move to skillset menu
			case 1:
				break;
	
			//Items is selected
			//Move to item menu
			case 2:
				break;
		
			//Defend is selected
			//Immediately end the turn
			case 3:
				break;
			
			//Retreat
			//Exit battle immediately
			case 4:
				break;
		
		}
		break;
		
	//Attack Menu
	case ATTACKMENU:
		switch (markerPosition){
			
			//Write List of targets;
			case 0:
				for (var i = 0; i < ds_list_size(global.targets); i++) {
					var inst = global.targets[|i];
					option[TARGETINGMENU, i] = inst.nameTitle;
				}
				
				//Set up variables to be used in targetting
				if (CheckEnoughCost(attackCostEnergy, attackCostSkill)) {
					energyToDeduct = attackCostEnergy;
					macroState = B_ATTACK;
					sequenceName = global.attackingUnit.unitSequence;
					sequenceStartPos = global.attackingUnit.basicAttackStart;
					global.menuLayer = TARGETINGMENU;
				}
				
				break;
		}
		break;
	//Targeting Attack Layer
	case TARGETINGMENU:
	
		switch(markerPosition) {
			case 0:
				//global.targets[|0].drawTarget = true;
				global.energyPoints -= energyToDeduct;
				allowInput = false;
				global.targeting = true;
				
				//Perform the move here
				PerformMove(target, macroState, sequenceName, sequenceStartPos);
				
				global.menuLayer = PROCESS;
				
				BattleCameraMove(0, -10, 0.5, 1);

				break;
			
			case 1:
				//global.targets[|1].drawTarget = true;
				global.energyPoints -= energyToDeduct;
				allowInput = false;
				global.targeting = true;
				PerformMove(1, macroState, sequenceName, sequenceStartPos);
				global.menuLayer = PROCESS;
				break;
			
				
		}
		break;
	}
	
	
	//Set position back to 0 when switching menu layers
	if (_startingLayer != global.menuLayer) markerPosition = 0;
	
	//Correct the option length after switching menu layer
	optionLength = array_length(option[global.menuLayer]);
		
}



if (returnKey && allowInput) {
	switch (global.menuLayer) {
		
		//If we are at base menu layer, do nothing
		case 0:
			break;
		
		//Otherwise, return to previous menu layer
		default:
			global.menuLayer--;
			break;
	}
}

//If on main menu layer, energy increases normally, if on any
//other layer, pause energy increase.
if (global.menuLayer != 0) global.pauseBattle = true;
else global.pauseBattle = false;
	