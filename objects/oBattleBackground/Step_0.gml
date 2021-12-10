//All lines travelling will depend on the leader line
time--;

if (endLeaderLineX <= endTravelDistanceX && endLeaderLineX > 0 && time <= 0) {
	startLeaderLineX -= planeSpreadFactor;
	endLeaderLineX--;	
	
	time = timeScale;
}

//When leaderline has finished traveling, reset position
else if (endLeaderLineX <= 0) {
	
	//To make the lines go smoothly, each cycle has an offset of 
	//one frame worth of travel distance
	endLeaderLineX = endResetPosX - 1;
	
	//startLeaderLineX = startResetPosX - diff;
	startLeaderLineX = startResetPosX - planeSpreadFactor;
}
