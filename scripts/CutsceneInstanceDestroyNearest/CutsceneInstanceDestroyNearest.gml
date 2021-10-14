///@arg x
///@arg y
///@arg obj
function CutsceneInstanceDestroyNearest()
{
	var _Inst = instance_nearest(argument0, argument1, argument2);
	
	with (_Inst)
	{
		instance_destroy();
	}
	CutsceneEndAction();
}