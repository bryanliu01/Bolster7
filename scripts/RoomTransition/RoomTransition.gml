/// @desc RoomTransition(Type, TargetRoom)
/// @arg Type
/// @arg TargetRoom
function RoomTransition(Type, TargetRoom)
{
	if (!instance_exists(oTransition))
	{
		with (instance_create_depth(0, 0, -9999, oTransition))
		{
			Type = argument[0];
			TargetRoom = argument[1];
			
		}
	}
	else show_debug_message("Trying to transition while transition is happening");
}