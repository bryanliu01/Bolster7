//Toggle between the states of the battle
switch (combatPhase) {
	case phase.init:
		
		
		for (var i = 0; i < instance_number(cSpawn); i++) {
			var spawner = instance_find(cSpawn, i);
			var unit = instance_create_depth(spawner.x, spawner.y, 0, oPlayerBattle);
			ds_list_add(global.units, unit);
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
				global.selectedUnit = inst;
				break;
			}
		}
		allowInput = true;
		combatPhase = phase.wait;
	break;
	
	//Either we are attacking or enemy is attacking, we must wait***
	case phase.wait:
		if (selectedFinished == true) {	
			global.selectedUnit.selected = false;
			unitsFinished++;
			combatPhase = phase.process;
			
		}
	break;
	
	case phase.process:
		if (processFinished) combatPhase = phase.checkFinish;	
	break;
	
	case phase.checkFinish:
		processFinished = false;
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