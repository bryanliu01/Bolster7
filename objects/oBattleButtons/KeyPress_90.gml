switch (menuIndex) {
	case attack: 
	
		if (oCombatManager.allowInput) {
			with (global.selectedUnit) {
				state = B_ATTACK;
				layer_sequence_headpos(unitSequence, basicAttackStart);
				for (var i = 0; i < ds_list_size(global.units); i++) {
			
					if (global.units[|i] != global.selectedUnit) {
						global.selectedTargets = global.units[|i];
						//Only finds the first unit that matches selectedUnit

						break;
					}
				}
			}
			oCombatManager.allowInput = false;
		}	
	break;
	
	case defend: 
	
		if (oCombatManager.allowInput) {
			with (global.selectedUnit) {
				state = DEFEND;
				layer_sequence_headpos(unitSequence, defendStart);
				for (var i = 0; i < ds_list_size(global.units); i++) {
			
					if (global.units[|i] != global.selectedUnit) {
						global.selectedTargets = global.units[|i];
						//Only finds the first unit that matches selectedUnit

						break;
					}
				}
			}
			//oCombatManager.allowInput = false;
		}	
	break;
}
/*if (allowInput) {
	with (global.selectedUnit) {
		state = B_ATTACK;
		layer_sequence_headpos(unitSequence, basicAttackStart);
		for (var i = 0; i < ds_list_size(global.units); i++) {
			
			if (global.units[|i] != global.selectedUnit) {
				global.selectedTargets = global.units[|i];
				//Only finds the first unit that matches selectedUnit

				break;
			}
		}
	}
	allowInput = false;
}	