function AddBasicMove(_move, _list) {
	if (array_length(_list) < 4 && FindMove(_move, _list) == -1) {
		array_push(_list, _move);
	}
}

function FindMove(_move, _list) {
	var movePos = -1;
	for (var i = 0; i < array_length(_list); i++) {
		if (_move == array_get(_list, i)) {
			var movePos = i;
			break;
		}
	}
	return movePos;
}

function StoreAllMoveSets(){
	global.moveSet = {
		
		punch : new CreateMove (
			"Punch",
			1,
			0,
			0,
			"Your signature move. Strike the enemy with a single hit.",
			BASIC,
			256, //268
			SINGLE_PUNCH
			
		),
		
		doublePunch : new CreateMove (
			"Double Punch",
			2,
			0,
			0,
			"Strike the enemy with two hits. Each punch has a 25% chance to critically strike.",
			BASIC,
			26, //55
			B_ATTACK
		),
		
		enragedAttack : new CreateMove (
			"Enraged ATK",
			2,
			5,
			15,
			"Sacrifice some health to become enraged for this attack alone. The attack has a higher chance to critically strike depending on your how low your health is.",
			SKILLS,
			327, //371
			ENRAGED_ATTACK
		),
		
		bombRain : new CreateMove (
			"Bomb Rain",
			1,
			2,
			0,
			"Throw down some bombs that deals moderate to the target enemy. Other enemies take residual damage.",
			SKILLS,
			372, //401
			BOMB
		),
		
		laserShot : new CreateMove (
			"Laser Shot",
			3,
			10,
			0,
			"Charge up the laser gun and wildly unleash a burst of lasers towards the enemy.",
			SKILLS,
			268, //326
			LASER
		)

	}
}