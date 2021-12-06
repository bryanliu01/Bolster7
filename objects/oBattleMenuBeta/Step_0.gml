up = keyboard_check_pressed(vk_up);
down = keyboard_check_pressed(vk_down);
acceptKey = keyboard_check_pressed(ord("Z"));
returnKey = keyboard_check_pressed(ord("X"));

//Store number of options in current menu
optionLength = array_length(option[menuLayer]);

markerPosition += down - up;

if (markerPosition >= optionLength) markerPosition = 0;
if (markerPosition < 0) markerPosition = optionLength - 1;

if (acceptKey && allowInput) {
	
	var _startingLayer = menuLayer;
	switch (menuLayer) {
		
	//General Actions
	case 0:	
		switch (markerPosition){
			//Attack is selected
			//Move to targeting menu
			case 0:
				for (var i = 0; i < ds_list_size(global.targets); i++) {
					var inst = global.targets[|i];
					option[1, i] = inst.nameTitle;
				}
				menuLayer = 1;
				global.pauseBattle = true;
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
		
		}
		break;
	
	//Targeting Attack Layer
	case 1:
		switch(markerPosition) {
			case 0:
			
			//Polling input, switch allowInput to true at last frames
			//of attack animation
			if (CheckEnoughCost(attackCostEnergy, attackCostSkill)) {
				global.energyPoints--;
				allowInput = false;
				global.targeting = true;
				if (global.targeting) {
					var unit = global.targets[|0];
					if (unit != global.attackingUnit) {
						global.selectedTargets = noone;
						with (global.attackingUnit) {
							state = B_ATTACK;
							layer_sequence_headpos(unitSequence, basicAttackStart);
						}
						global.selectedTargets = unit;
					}
				}
				menuLayer = 0;
			}
			break;
			
			case 1:
			
			//Polling input, switch allowInput to true at last frames
			//of attack animation
			if (CheckEnoughCost(attackCostEnergy, attackCostSkill)) {
				global.energyPoints--;
				
				allowInput = false;
				AttackButton();
				if (global.targeting) {
					var unit = global.targets[|1];
					if (unit != global.attackingUnit) {
						global.selectedTargets = noone;
						with (global.attackingUnit) {
							state = B_ATTACK;
							layer_sequence_headpos(unitSequence, basicAttackStart);
						}
						global.selectedTargets = unit;
					}
				}
				menuLayer = 0;
			}
			break;
				
		}
		break;
	}
	
	//Set position back to 0 when switching menu layers
	if (_startingLayer != menuLayer) markerPosition = 0;
	
	//Correct the option length after switching menu layer
	optionLength = array_length(option[menuLayer]);
		
}

if (returnKey && allowInput) {
	switch (menuLayer) {
		
		//If we are at base menu layer, do nothing
		case 0:
			break;
		
		//Otherwise, return to previous menu layer
		default:
			menuLayer--;
			break;
	}
}

if (menuLayer = 0) global.pauseBattle = false;
	