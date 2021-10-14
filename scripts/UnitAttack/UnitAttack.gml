function UnitAttack(){
	var unit = global.selectedUnit;
	if (unit.attackWillHit) {
		
		//If the selected unit's attack will hit,
		//Then the target will be hurt.
		with(global.selectedTargets) {
			incomingDamage = unit.current[@ ATTACKPOINTS];
			state = HURT;
			layer_sequence_headpos(unitSequence, hurtStart);
		}
	}
}