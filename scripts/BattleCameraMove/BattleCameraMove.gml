//This function can control the battle camera with dynamic fluid movement
//@param xPos - the x position of the camera to move to
//@param yPos - the y position of the camera to move to
//@param scale - how much the camera zooms in its new position
//@param interpolation - the rate at which the camera dynamically moves
//Setting interpolation at 1 makes an instantaneous snap. By default it is 0.15
function BattleCameraMove(xPos, yPos, zoom, interpolation){
	if (instance_exists(oBattleCamera)) {
		with(oBattleCamera) {
			xCameraOffSet = xPos;
			yCameraOffSet = yPos;
			scale = zoom;
			rate = interpolation;
		}
	}
}