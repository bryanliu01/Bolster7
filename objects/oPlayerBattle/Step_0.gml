event_inherited();

var _hp = current[@ HEALTH]/base[@ HEALTH];
endOfHealthBar = (_hp*healthBarWidth) + healthBarOffSetX;
//Health Bar
//White line traversal
if (whiteLinePosX <= endOfHealthBar) {

	whiteLinePosX += 1;
	
} 

//After white line reaches the end, wait for a moment
else if (whiteLinePosX >= endOfHealthBar && waitTime < lineOffTime) {
	waitTime++;
	whiteLinePosX = healthBarOffSetX + healthBarWidth + 2;
}

//Reset white line traversal
else {
	whiteLinePosX = healthBarOffSetX;
	waitTime = 0;
}
