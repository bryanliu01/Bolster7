///@arg Object
///@arg imagespeed


function CutsceneChangeImageSpeed()
{
	if (instance_exists(argument0)) var _Inst = instance_id_get(argument0);
	with (_Inst)
	{
		image_speed = argument1;
	}
	CutsceneEndAction();

}