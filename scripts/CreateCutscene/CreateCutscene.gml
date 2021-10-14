///@arg SceneInfo
function CreateCutscene(TSceneInfo)
{

	var _Inst = instance_create_layer(0,0,"Game", oCutscene);
	with (_Inst)
	{
		SceneInfo = argument0;
		event_perform(ev_other, ev_user0);
	}
}
