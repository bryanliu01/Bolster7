function PlayerDoublePunch(){
	var unit = global.attackingUnit;
	if (unit.attackWillHit) {
		
		//If the selected unit's attack will hit,
		//Then the target will be hurt.
		with(global.selectedTargets) {
			var crit = CritChance(25, 1.5);
			incomingDamage = round(irandom_range(unit.current[@ ATTACKPOINTS] * 0.4, unit.current[@ ATTACKPOINTS] * 0.8) * crit);
			state = HURT;
			layer_sequence_headpos(unitSequence, hurtStart);
			event_user(0);
			damageIsCrit = false;
		}
	}
}