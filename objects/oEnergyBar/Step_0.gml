//If a energy block is less than the partition width, let energy bar increase
if (currentEnergy < partitionWidth && !global.energyFull && !global.pauseBattle) {
	currentEnergy = currentEnergy + (2 / 3) * (oPlayerBattle.current[SPEED]/50);
}

//Else if the energy has exceeded a partition and current energy points are less than the maximum,
//Reset current energy and increment energy points
else if (currentEnergy >= partitionWidth && global.energyPoints <= maxEnergyPoints) {
	currentEnergy = 0;
	global.energyPoints++;
	
	//Find the player and play sprite for energy increase
	var player = instance_nearest(0, 0, oPlayerBattle);
	var xPos = player.x;
	var yPos = player.y;
		
	if (!instance_exists(oPlayerEnergyUp)) {
		instance_create_depth(xPos, yPos, 0, oPlayerEnergyUp);
	}
	
}

//Checks if we have reached maximum energy points
if (global.energyPoints >= maxEnergyPoints) {
	currentEnergy = 0;
	global.energyFull = true;
} else global.energyFull = false;