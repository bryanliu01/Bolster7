//Steps
//Initialise
//Real time Turn
//Wait when enemy attacks
//Process
//Check Finish
//End turn
//win
//lose

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

global.selectedUnit = noone;
global.units = ds_list_create(); //list of all units
global.targets = ds_list_create(); //potential units to attack
global.selectedTargets = noone;

global.targeting = false;


baseUI = layer_get_id("BaseUI");
targetUI = layer_get_id("TargetUI");