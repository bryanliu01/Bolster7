//Create a cutscene and load a cutscene identifier to it so that it executes.
function CreateCutsceneObjectAndLoadID(_cutsceneID){
	instance_create_layer(0, 0, "Game", cNormalCutscene);
	
	cutsceneID = _cutsceneID;
	
	with (cNormalCutscene) {
		tSceneInfo = CutsceneSceneInfo(_cutsceneID);
		event_user(0);
	}
}