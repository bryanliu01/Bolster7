//This function enables room passage after certain events have passed
//The oRoomExit object will spawn on the "Col" layer
//Default size is 64 x 64
function EnableRoom(xPos, yPos, xScale, yScale, _targetX, _targetY, _targetRoom) {
	if (!position_meeting(xPos, yPos, oRoomExit)) {
		var inst = instance_create_layer(xPos, yPos, "Col", oRoomExit);
		with inst {
			image_xscale = xScale;
			image_yscale = yScale;
			targetX = _targetX;
			targetY = _targetY;
			targetRoom = _targetRoom;
		}
	}
}