//Toggle between the states of the battle
switch (combatPhase) {
	case phase.init:
		
		for (var i = 0; i < instance_number(cSpawn); i++) {
			var spawner = instance_find(cSpawn, i);
			
			//Spawn Player and Hologram for test
			if (i = 0) {
				var unit = instance_create_depth(spawner.x, spawner.y, 0, oPlayerBattle);
				ds_list_add(global.units, unit);
			}
			
			else {
				var unit = instance_create_depth(spawner.x, spawner.y, 0, oHologramBattle);
				ds_list_add(global.units, unit);
			}
		}
		combatPhase = phase.realTimeTurn;
	break;
	
	
	//Real time battle, use time system to switch to wait***
	case phase.realTimeTurn:
	//BubbleSort(global.units); Check back at tutorial if needed
		//If all units have their attacks done, then reset unitsFinished
		if (unitsFinished >= ds_list_size(global.units)) {
			for (var i = 0; i< ds_list_size(global.units); i++) {
				with(global.units[|i]) turnFinished = false;
			}
			unitsFinished = 0;
		}
		for (var i = 0; i < ds_list_size(global.units); i++) {
			var inst = global.units[|i];
			if (inst.turnFinished == false) {
				inst.selected = true;
				global.attackingUnit = inst;
				break;
			}
		}
		
		for (var i = 0; i < ds_list_size(global.units); i++) {
			var _inst = global.units[|i];
			
			//debugging rn
			if (_inst != global.attackingUnit && !ds_list_find_index(global.targets, _inst)) {
			ds_list_add(global.targets, _inst);
			}
		}
		
		//If the game does not allow input, enable input
		if (!allowInput) {
			allowInput = true;
		}
		
		combatPhase = phase.wait;
	break;
	
	//Either we are attacking or enemy is attacking, we must wait***
	case phase.wait:
		if (selectedFinished == true) {	
			global.attackingUnit.selected = false;
			unitsFinished++;
			combatPhase = phase.process;
			
		}
	break;
	
	case phase.process:
		if (processFinished) {
			combatPhase = phase.checkFinish;
			
			global.targeting = false;
			
			//For every unit in the list, set drawTarget to false so that
			//in the case that a targeting sprite is drawn during this process
			//We will turn that off.
			for (var i = 0;  i < ds_list_size(global.units); i++) {
				with (global.units[|i]) {
					drawTarget = false;
				}
			}
		}
	break;
	
	case phase.checkFinish:
		processFinished = false;
		combatPhase = phase.endTurn;
	break;
	
	case phase.endTurn: 
		selectedFinished = false;
		global.selectedTargets = noone;
		
		combatPhase = phase.realTimeTurn;
	break;
	
	case phase.win:
	
	//Gain exp and money, check level ups, return to position in overworld
	break;
	
	case phase.lose:
	//Game Over Screen, Return to last checkpoint
	break;
	
}