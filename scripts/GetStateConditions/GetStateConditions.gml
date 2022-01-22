// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StateConditions(){
	
	if (instance_exists(oCutscene)  ||
	    instance_exists(oTextBox)) {
	
		state = PlayerStateLocked;
	}
	else if (oItemManager.menuIsOpened) {
		//Change this state to PlayerStateMenu and assign sprites later
		//TO DO
		state = PlayerStateLocked;
	}
	else if (instance_exists(oTransition) && instance_exists(oPlayer)) {
		state = PlayerStateTransition;
	}
	else {
		state = PlayerStateFree;
	}
}