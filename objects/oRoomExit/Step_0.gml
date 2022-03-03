/// @description Check to see if player collides with oRoomExit
// Cause room transition
if (!disable) {
	if (instance_exists(oPlayer)) && (position_meeting(oPlayer.x,oPlayer.y,id)) {
		if (!instance_exists(oTransition)) {
			global.targetRoom = targetRoom;
			global.targetX = targetX;
			global.targetY = targetY;
			global.targetDirection = oPlayer.direction;
			//room_goto(targetRoom);
		
			RoomTransition(transType.fade, targetRoom);
		
		}
	}
}
