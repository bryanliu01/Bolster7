function HologramAttackA(){
	var unit = global.attackingUnit;
	if (unit.attackWillHit) {
		with (oPlayerBattle) {
			incomingDamage = irandom_range(unit.current[@ ATTACKPOINTS], unit.current[@ ATTACKPOINTS] + 2);
			state = HURT;
			layer_sequence_headpos(unitSequence, hurtStart);
			event_user(0);
		}
	}
}