///@arg x
///@arg y
///@arg obj
function CutsceneInstanceDestroyNearest(xPos, yPos, obj)
{
	var _Inst = instance_nearest(xPos, yPos, obj);
	
	with (_Inst)
	{
		instance_destroy();
	}
	CutsceneEndAction();
}