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
	
	
	//Basic Attack
	case ATTACK_A:
		if (layer_sequence_get_headpos(unitSequence) > attackAEnd) {
			turnFinished = true;
			layer_sequence_headpos(unitSequence, idleStart);
			state = IDLE;
		}
		
	break;
	
	case ATTACK_B:
		if (layer_sequence_get_headpos(unitSequence) > attackBEnd) {
			turnFinished = true;
			layer_sequence_headpos(unitSequence, idleStart);
			state = IDLE;
		}
		
	break;
	
	case ATTACK_C:
		if (layer_sequence_get_headpos(unitSequence) > attackCEnd) {
			turnFinished = true;
			layer_sequence_headpos(unitSequence, idleStart);
			state = IDLE;
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
				
				state = DEATH;
				
			}
		}
		
	break;
	
	case DEATH:
		if (layer_sequence_get_headpos(unitSequence) > deathEnd) {
			ds_list_delete(global.units, ds_list_find_index(global.units, id));
			ds_list_delete(global.targets, ds_list_find_index(global.targets, id));
			instance_destroy();
		}
	break;
}
