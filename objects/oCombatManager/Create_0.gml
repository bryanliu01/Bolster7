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
	win,
	lose
}

combatPhase = phase.init;
unitsFinished = 0;
selectedFinished = false;
processFinished = false;
allowInput = false;

global.selectedUnit = noone;
global.units = ds_list_create();
global.selectedTargets = noone;
