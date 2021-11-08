//Loop the sequence depending on sequence header position
//Also have states for the units
switch(state) {
	
	case INTRO:
		layer_sequence_headpos(unitSequence, battleArriveStart);
		if (layer_sequence_get_headpos(unitSequence) > battleArriveEnd) {
			layer_sequence_headpos(unitSequence, idleStart);
			state = IDLE;
		}
			
	break;
	
	
	//Not attacking
	case IDLE:
		
		if (layer_sequence_get_headpos(unitSequence) > idleEnd) {
			layer_sequence_headpos(unitSequence, idleStart);
		}
	break;
	
	
	//Selected an attacking action
	case JUMP_FORWARD:
		if (layer_sequence_get_headpos(unitSequence) > jumpEnd) {
			layer_sequence_headpos(unitSequence, basicAttackStart)
			state = B_ATTACK;
		}
		
	break;
	
	
	//Basic Attack
	case B_ATTACK:
		if (layer_sequence_get_headpos(unitSequence) > basicAttackEnd) {
			turnFinished = true;
			layer_sequence_headpos(unitSequence, idleStart);
			state = IDLE;
		}
		
	break;
	
	//Defend
	case DEFEND:
		if (layer_sequence_get_headpos(unitSequence) > defendEnd) {
			layer_sequence_headpos(unitSequence, defendStart);
		}
	break;
		
	case HURT:
		if (layer_sequence_get_headpos(unitSequence) > hurtEnd) {
			DamageUnit(incomingDamage);
			
			//If healthy continue states
			if (current[@ HEALTH] > 0) {
				layer_sequence_headpos(unitSequence, idleStart);
				incomingDamage = 0;
				state = IDLE;
			}
			
			else if (current[@ HEALTH] <= 0) {
				layer_sequence_headpos(unitSequence, deathStart);
				ds_list_delete(global.units, ds_list_find_index(global.units, id));
				state = DEATH;
				
			}
		}
		
	break;	
	
	case DEFEND_HURT:
		if (layer_sequence_get_headpos(unitSequence) > defendHurtEnd) {
			layer_sequence_headpos(unitSequence, defendStart);
			state = DEFEND;
		}
		
	break;
	
	case DEATH:
		if (layer_sequence_get_headpos(unitSequence) > deathEnd) {
			instance_destroy();
		}
	break;
}

if ((global.targeting) && global.selectedUnit != id) {
	
}