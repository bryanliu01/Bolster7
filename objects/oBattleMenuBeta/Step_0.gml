up = keyboard_check_pressed(vk_up);
down = keyboard_check_pressed(vk_down);
acceptKey = keyboard_check_pressed(ord("Z"));
returnKey = keyboard_check_pressed(ord("X"));

//Store number of options in current menu
if (global.menuLayer != TARGETINGMENU) optionLength = array_length(option[global.menuLayer]);
else optionLength = ds_list_size(global.targets);

markerPosition += down - up;

if (markerPosition >= optionLength) markerPosition = 0;
if (markerPosition < 0) markerPosition = optionLength - 1;

if (acceptKey && allowInput && oCombatManager.introFinished) {
	
	var _startingLayer = global.menuLayer;
	switch (global.menuLayer) {
		
	//General Actions
	case GENERALMENU:	
		with (oPlayerBattle) unitIsDefending = false;
		for (var i = 0; i < ds_list_size(global.targets); i++) {
				var inst = global.targets[| i];
				option[TARGETINGMENU, i] = inst.nameTitle;
		}
		switch (markerPosition){
			//Attack is selected
			//Move to Attack menu
			case 0:
				global.menuLayer = ATTACKMENU;
				break;
	
			//Skills is selected
			//Move to skillset menu
			case 1:
				global.menuLayer = SKILLMENU;
				break;
	
			
			//Defend is selected
			//Immediately end the turn
			case 2:
				target = noone;
				allowInput = false;
				global.targeting = true;
				
				oPlayerBattle.unitIsDefending = true;
				
				//Player defends and reduces the enemy's next attack
				macroState = DEFEND;
				sequenceName = global.attackingUnit.unitSequence;
				sequenceStartPos = oPlayerBattle.defendStart;
				PerformMove(target, macroState, sequenceName, sequenceStartPos);
				
				global.menuLayer = PROCESS;
				break;
		
			
			//Items is selected
			//Move to item menu
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
			
			case 0:
				
				//Set up variables to be used in targetting
				if (CheckEnoughCost(option[ATTACKMENU, 0].energyCost, option[ATTACKMENU, 0].skillCost, option[ATTACKMENU, 0].healthCost)) {
					energyToDeduct = option[ATTACKMENU, 0].energyCost;
					skillToDeduct = option[ATTACKMENU, 0].skillCost;
					healthToDeduct = option[ATTACKMENU, 0].healthCost;
					
					macroState = option[ATTACKMENU, 0].state;
					sequenceStartPos = option[ATTACKMENU, 0].sequenceFrame;
					sequenceName = global.attackingUnit.unitSequence;
					
					global.menuLayer = TARGETINGMENU;
				}
				
				break;
				
			case 1:
			
				
				//Set up variables to be used in targetting
				if (CheckEnoughCost(option[ATTACKMENU, 1].energyCost, option[ATTACKMENU, 1].skillCost, option[ATTACKMENU, 1].healthCost)) {
					energyToDeduct = option[ATTACKMENU, 1].energyCost;
					skillToDeduct = option[ATTACKMENU, 1].skillCost;
					healthToDeduct = option[ATTACKMENU, 1].healthCost;
					
					macroState = option[ATTACKMENU, 1].state;
					sequenceStartPos = option[ATTACKMENU, 1].sequenceFrame;
					sequenceName = global.attackingUnit.unitSequence;
					
					global.menuLayer = TARGETINGMENU;
				}
				
				break;
		}
		break;
		
	case SKILLMENU:
	
		
		switch (markerPosition){
			
			case 0:
			
				//Set up variables to be used in targetting
				if (CheckEnoughCost(option[SKILLMENU, 0].energyCost, option[SKILLMENU, 0].skillCost, option[SKILLMENU, 0].healthCost)) {
					energyToDeduct = option[SKILLMENU, 0].energyCost;
					skillToDeduct = option[SKILLMENU, 0].skillCost;
					healthToDeduct = option[SKILLMENU, 0].healthCost;
					
					macroState = option[SKILLMENU, 0].state;
					sequenceStartPos = option[SKILLMENU, 0].sequenceFrame;
					sequenceName = global.attackingUnit.unitSequence;
					
					global.menuLayer = TARGETINGMENU;
				}
				
				break;
				
			case 1:
			
				
				//Set up variables to be used in targetting
				if (CheckEnoughCost(option[SKILLMENU, 1].energyCost, option[SKILLMENU, 1].skillCost, option[SKILLMENU, 1].healthCost)) {
					energyToDeduct = option[SKILLMENU, 1].energyCost;
					skillToDeduct = option[SKILLMENU, 1].skillCost;
					healthToDeduct = option[SKILLMENU, 1].healthCost;
					
					macroState = option[SKILLMENU, 1].state;
					sequenceStartPos = option[SKILLMENU, 1].sequenceFrame;
					sequenceName = global.attackingUnit.unitSequence;
					
					global.menuLayer = TARGETINGMENU;
				}
				
				break;
				
			case 2:
			
				//Buffer targets
				
				
				//Set up variables to be used in targetting
				if (CheckEnoughCost(option[SKILLMENU, 2].energyCost, option[SKILLMENU, 2].skillCost, option[SKILLMENU, 2].healthCost)) {
					energyToDeduct = option[SKILLMENU, 2].energyCost;
					skillToDeduct = option[SKILLMENU, 2].skillCost;
					healthToDeduct = option[SKILLMENU, 2].healthCost;
					
					macroState = option[SKILLMENU, 2].state;
					sequenceStartPos = option[SKILLMENU, 2].sequenceFrame;
					sequenceName = global.attackingUnit.unitSequence;
					
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
				global.skillPoints -= skillToDeduct;
				global.attackingUnit.current[@ HEALTH] -= healthToDeduct;
				target = 0;
				allowInput = false;
				global.targeting = true;
				
				//Perform the move here
				PerformMove(target, macroState, sequenceName, sequenceStartPos);
				
				global.menuLayer = PROCESS;
				
				//BattleCameraMove(0, -10, 0.5, 1);

				break;
			
			case 1:
				//global.targets[|1].drawTarget = true;
				global.energyPoints -= energyToDeduct;
				global.skillPoints -= skillToDeduct;
				global.attackingUnit.current[@ HEALTH] -= healthToDeduct;
				target = 1;
				allowInput = false;
				global.targeting = true;
				
				//Perform the move here
				PerformMove(target, macroState, sequenceName, sequenceStartPos);
				
				global.menuLayer = PROCESS;
				
				//BattleCameraMove(0, -10, 0.5, 1);

				break;
				
			case 2:
				//global.targets[|1].drawTarget = true;
				global.energyPoints -= energyToDeduct;
				global.skillPoints -= skillToDeduct;
				global.attackingUnit.current[@ HEALTH] -= healthToDeduct;
				target = 2;
				allowInput = false;
				global.targeting = true;
				
				//Perform the move here
				PerformMove(target, macroState, sequenceName, sequenceStartPos);
				
				global.menuLayer = PROCESS;
				
				//BattleCameraMove(0, -10, 0.5, 1);

				break;
				
			case 3:
				//global.targets[|1].drawTarget = true;
				global.energyPoints -= energyToDeduct;
				global.skillPoints -= skillToDeduct;
				global.attackingUnit.current[@ HEALTH] -= healthToDeduct;
				target = 2;
				allowInput = false;
				global.targeting = true;
				
				//Perform the move here
				PerformMove(target, macroState, sequenceName, sequenceStartPos);
				
				global.menuLayer = PROCESS;
				
				//BattleCameraMove(0, -10, 0.5, 1);

				break;
				
		}
		break;
	}
	
	
	//Set position back to 0 when switching menu layers
	if (_startingLayer != global.menuLayer) markerPosition = 0;
	
	//Correct the option length after switching menu layer
	optionLength = array_length(option[global.menuLayer]);
		
}



if (returnKey && allowInput & !oPlayerBattle.unitIsDefending) {
	switch (global.menuLayer) {
		
		//If we are at base menu layer, do nothing
		case 0:
			break;
		
		//Otherwise, return to previous menu layer
		default:
			global.menuLayer = 0;
			markerPosition = 0;
			break;
	}
}

//If on main menu layer, energy increases normally, if on any
//other layer, pause energy increase.
if (!oEventFlag.genocide) {
	if (global.menuLayer != 0 || instance_exists(oTextBox)) global.pauseBattle = true;
	else global.pauseBattle = false;
}

	