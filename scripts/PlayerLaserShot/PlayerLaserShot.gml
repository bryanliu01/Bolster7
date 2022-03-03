function PlayerLaserShot(){
	var unit = global.attackingUnit;
	
	if (unit.attackWillHit) {
		with(global.selectedTargets) {
			var dmg = unit.current[@ ATTACKPOINTS];
			incomingDamage = round(choose(0, dmg - 4, dmg - 3, dmg - 2, dmg - 1));
			state = HURT;
			layer_sequence_headpos(unitSequence, hurtStart);
			event_user(0);
		
		}
	}
}