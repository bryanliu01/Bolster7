event_inherited();


if (energy < maxEnergy && oCombatManager.idle && ((!pause && oBattleMenuBeta.allowInput && state != DEATH && global.menuLayer == 0) || (oPlayerBattle.unitIsDefending && oPlayerBattle.state == DEFEND))) {
	energy += 1;
}
else if (energy >= maxEnergy && state != DEATH && (global.menuLayer == 0 || oPlayerBattle.unitIsDefending)) {
	
	//Stop player input and pause energy gain
	//Turn pauseBattle to false in enemy sequence when attack goes through
	pause = true;
	oBattleMenuBeta.allowInput = false;
	
	//Reset energy and max energy
	energy = 0;
	maxEnergy = irandom_range(current[SPEED] * 10 * 0.5, current[SPEED] * 10 * 2);
	
	//Enemy chooses a random attack of its moveset and executes it
	var chosenAttack = choose(ATTACK_A, ATTACK_B, ATTACK_C);
	var sequenceStartPos
	state = chosenAttack;
	switch chosenAttack {
		case ATTACK_A: var sequenceStartPos = attackAStart; break;
		case ATTACK_B: var sequenceStartPos = attackBStart; break;
		case ATTACK_C: var sequenceStartPos = attackCStart; break;
			
		
	}
	global.attackingUnit = id;
	layer_sequence_headpos(unitSequence, sequenceStartPos);
	
}
