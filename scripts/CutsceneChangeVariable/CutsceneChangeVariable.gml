///@arg obj
///@arg var name as string
///@arg value
function CutsceneChangeVariable()
{
	with(argument0)
	{
		variable_instance_set(id, argument1, argument2);
	}
	
	CutsceneEndAction();

}