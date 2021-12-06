energyBarWidth = 360;
energyBarHeight = sprite_get_height(sEnergyBar);

currentEnergy = 0;

global.energyPoints = 0;
maxEnergyPoints = 3;
global.energyFull = false;


partitionWidth = energyBarWidth/maxEnergyPoints;


//Duration interval of blinking energy bar in ms
duration = 1200;