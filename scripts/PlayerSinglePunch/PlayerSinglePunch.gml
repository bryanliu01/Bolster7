function PlayerSinglePunch(){
	var unit = global.attackingUnit;
	if (unit.attackWillHit) {
		
		//If the selected unit's attack will hit,
		//Then the target will be hurt.
		with(global.selectedTargets) {
			incomingDamage = irandom_range(unit.current[@ ATTACKPOINTS] * 0.4, unit.current[@ ATTACKPOINTS] * 0.8) ;
			state = HURT;
			layer_sequence_headpos(unitSequence, hurtStart);
			event_user(0);
		}
	}
}