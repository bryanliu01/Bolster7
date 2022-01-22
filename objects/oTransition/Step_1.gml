//Progress transition
//In begin step event because we want this execute before any other
//object's step event executes

with (oPlayer) state = PlayerStateTransition;

if (leading == OUT) {
	percent = min(1, percent + TRANSITION_SPEED);
	
	//If screen is fully covered
	if (percent >= 1) {
		room_goto(targetRoom);
		leading = IN;
	}
}

else if (leading == IN) {
	with (oPlayer) {
		x = global.targetX;
		y = global.targetY;
		direction = global.targetDirection;
	}
	percent = max(0, percent - TRANSITION_SPEED);
	
	//If screen is fully revealed
	if (percent <= 0) {
		
		instance_destroy();
	}
}