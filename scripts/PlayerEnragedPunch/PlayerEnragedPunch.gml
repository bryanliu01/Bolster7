function PlayerEnragedPunch(){
	var unit = global.attackingUnit;
	if (unit.attackWillHit) {
		
		//If the selected unit's attack will hit,
		//Then the target will be hurt.
		with(global.selectedTargets) {
			var ratio = (oPlayerBattle.current[@ HEALTH] + 20)/ (oPlayerBattle.base[@ HEALTH]);
			ratio = max(80, ratio); //Currently 10% to 80% scaling
			var crit = CritChance(ratio, 1.5);
			incomingDamage = round(irandom_range(unit.current[@ ATTACKPOINTS] * 0.5, unit.current[@ ATTACKPOINTS]) * crit);
			state = HURT;
			layer_sequence_headpos(unitSequence, hurtStart);
			event_user(0);
			damageIsCrit = false;
		}
	}
}