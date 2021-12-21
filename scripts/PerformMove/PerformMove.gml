//Takes 4 parameters
//@param target element of global.targets list
//@param macroState which is the state in which the player moves to
//@param sequenceName which is the sequence to play, default is unitSequence
//@param sequenceStartPos the position of the sequence head to play
function PerformMove(target, macroState, sequenceName, sequenceStartPos){
	
	
	
	if (global.targeting) {
		var unit = global.targets[|target];
		if (unit != global.attackingUnit) {
			global.selectedTargets = noone;
			with (global.attackingUnit) {
				state = macroState;
				layer_sequence_headpos(sequenceName, sequenceStartPos);
			}
			global.selectedTargets = unit;
		}
				
	}
	
}