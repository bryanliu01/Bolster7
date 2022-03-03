//Loop the sequence depending on sequence header position
//Also have states for the units
switch(state) {
	
	case INTRO:

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
	
	
	#region
	//Basic Attack
	case B_ATTACK:
		if (layer_sequence_get_headpos(unitSequence) > basicAttackEnd) {
			turnFinished = true;
			layer_sequence_headpos(unitSequence, idleStart);
			state = IDLE;
		}
		
	break;
	
	case SINGLE_PUNCH:
		if (layer_sequence_get_headpos(unitSequence) > singlePunchEnd) {
			turnFinished = true;
			layer_sequence_headpos(unitSequence, idleStart);
			state = IDLE;
		}
		
	break;
	
	case ENRAGED_ATTACK:
		if (layer_sequence_get_headpos(unitSequence) > enragedAttackEnd) {
			turnFinished = true;
			layer_sequence_headpos(unitSequence, idleStart);
			state = IDLE;
		}
		
	break;
	
	case LASER:
		if (layer_sequence_get_headpos(unitSequence) > laserShotEnd) {
			turnFinished = true;
			layer_sequence_headpos(unitSequence, idleStart);
			state = IDLE;
		}
		
	break;
	
	case BOMB:
		if (layer_sequence_get_headpos(unitSequence) > bombRainEnd) {
			turnFinished = true;
			layer_sequence_headpos(unitSequence, idleStart);
			state = IDLE;
		}
		
	break;
	#endregion
	
	//Defend
	case DEFEND:
		if (layer_sequence_get_headpos(unitSequence) > defendEnd) {
			layer_sequence_headpos(unitSequence, defendStart);
		}
	break;
		
	case HURT:
		
		if (layer_sequence_get_headpos(unitSequence) > hurtEnd) {
			
			//If healthy continue states
			if (current[@ HEALTH] > 0) {
				layer_sequence_headpos(unitSequence, idleStart);
				incomingDamage = 0;
				state = IDLE;
			}
			
			else if (current[@ HEALTH] <= 0) {
				layer_sequence_headpos(unitSequence, deathStart);
				ds_list_delete(global.units, ds_list_find_index(global.units, id));
				ds_list_delete(global.targets, ds_list_find_index(global.targets, id));
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
