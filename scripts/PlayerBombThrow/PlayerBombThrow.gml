function PlayerBombThrow(){
	var unit = global.attackingUnit;
	if (unit.attackWillHit) {
		
		//If the selected unit's attack will hit,
		//Then the target will be hurt.
		with(global.selectedTargets) {
			incomingDamage = round(irandom_range(unit.current[@ ATTACKPOINTS] * 0.6, unit.current[@ ATTACKPOINTS]) * 0.8);
			state = HURT;
			layer_sequence_headpos(unitSequence, hurtStart);
			event_user(0);
		}
		
		for (var i = 0; i < ds_list_size(global.targets); i++) {
			if (global.targets[| i] != global.selectedTargets) {
				with global.targets[| i] {
					incomingDamage = max(1, round(irandom_range(unit.current[@ ATTACKPOINTS] * 0.4, unit.current[@ ATTACKPOINTS]) * 0.5));
					state = HURT;
					layer_sequence_headpos(unitSequence, hurtStart);
					event_user(0);
				}
			}
		}
	}
}