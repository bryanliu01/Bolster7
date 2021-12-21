//Steps
//Initialise
//Real time Turn
//Wait when enemy attacks
//Process
//Check Finish
//End turn
//win
//lose

idle = false;
idleCount = 0;
introFinished = false;

enum phase {
	init,
	realTimeTurn,
	wait,
	process,
	checkFinish,
	endTurn,
	win,
	lose
}

combatPhase = phase.init;
unitsFinished = 0;
selectedFinished = false;
processFinished = false;
allowInput = false;

global.attackingUnit = noone;
global.units = ds_list_create(); //list of all units
global.targets = ds_list_create(); //potential units to attack
global.selectedTargets = noone;

global.targeting = false;

global.pauseBattle = false;


baseUI = layer_get_id("BaseUI");
targetUI = layer_get_id("TargetUI");

healthBarWidth = 104;
healthBarHeight = 10;

//Place base health bar GUI in this position
baseHealthBarX = RESOLUTIONW - 8 - sprite_get_width(sEnemyHealthGUI);
baseHealthBarY = 19;

//Place animated red health bar in offset position
healthBarOffSetX = 5 + baseHealthBarX;
healthBarOffSetY = 5 + baseHealthBarY;

//Health bar animation position code
//White opaque line traverses through health bar
//Leaves behind an after image when moving
whiteLinePosX = healthBarOffSetX; //This value will change as the white line moves
whiteLinePosY = healthBarOffSetY;

whiteLineHeight = healthBarHeight;
whiteLineWidth = 1;
endOfHealthBar = healthBarWidth + healthBarOffSetX;

global.battleCamera = noone;

