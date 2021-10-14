///@arg x
///@arg y
///@arg layerid
///@arg Object

function CutsceneInstanceCreate()
{
	var _Inst = instance_create_layer(argument0, argument1, argument2, argument3);
	CutsceneEndAction();
	
	return _Inst;
}