//This function stores the identifiers of all cutscene infos.
function CutsceneSceneInfo(_cutsceneID){
	var _tSceneInfo = -1;
	
	switch (_cutsceneID) {
		
		//*****MOTHERSHIP*****//
		#region
		
		//Interrogation with Sneck has finished
		case "MS - interrogation finished":
			_tSceneInfo = [
			[CutsceneChangeTextID, cStartInterrogationCheck, "MS - interrogation is done"],
			[CutsceneChangeTextID, npcSneck, "MS - finished interrogation"]
			]
			break;
			
		#endregion
		
		default:
			_tSceneInfo = [
			[CutsceneInstanceCreate , 100, 100, "Game", npcEduard]
			]
			break;
			
	}
	
	return _tSceneInfo;
}