function CheckForHit(){
	
	//Checks to see if selected unit will hit its target based on accuracy
	var number = random(1);
	var unit = global.selectedUnit;
	if (number < unit.current[@ ACCURACY]) {
		unit.attackWillHit = true;
	}
	else unit.attackWillHit = false;
}