if (instance_exists(oPlayer)) && (position_meeting(oPlayer.x,oPlayer.y,id))
{
	global.TargetRoom = TargetRoom;
	global.TargetX = TargetX;
	global.TargetY = TargetY;
	global.TargetDirection = oPlayer.direction;
	room_goto(TargetRoom);

}