///@arg obj id
///@arg obj to change into
///@arg obj to perform events

function CutsceneInstanceChange()
{
	with(argument0)
	{
		instance_change(argument1, argument2);
		CutsceneEndAction();
	}
}