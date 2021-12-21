///@arg sceneInfo
function CreateCutscene(tSceneInfo)
{
	
	
	var _Inst = instance_create_layer(0,0,"Game", oCutscene);
	with (_Inst)
	{
		sceneInfo = argument0;
		event_perform(ev_other, ev_user0);
	}
}
