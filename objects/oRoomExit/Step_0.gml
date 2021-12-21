/// @description Check to see if player collides with oRoomExit
// Cause room transition
if (instance_exists(oPlayer)) && (position_meeting(oPlayer.x,oPlayer.y,id)) {
	oPlayer.state = PlayerStateLocked;
	global.TargetRoom = TargetRoom;
	global.TargetX = TargetX;
	global.TargetY = TargetY;
	global.TargetDirection = oPlayer.direction;
	room_goto(TargetRoom);
	
}