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
			];
			break;
			
		#endregion
		
		//Ark Introduction
		#region
		case "MS - ark introduction":
			_tSceneInfo = [
			[CutsceneWait, 0.5],
			[CutsceneCreateInstanceAndFixFrame, 312, -10, npcArkCutscene, 0, 13, 270],
			[CutsceneMoveCharacter, npcArkCutscene, 0, 140, true, 1, 135],
			[CutsceneCreateTextBox, "MS - ark introduction"],
			[CutsceneCheckTextBoxExists],
			//After Anne and Tink yells sir player looks around before saluting
			[CutsceneChangeInstanceAndFixFrame, oPlayer, oPlayerCutscene, true, 0, 9, 180],
			[CutsceneWait, 0.5],
			[CutsceneFixFrame, oPlayerCutscene, 0, 5, 90],
			[CutsceneWait, 0.5],
			[CutsceneFixFrame, oPlayerCutscene, 0, 13, 270],
			[CutsceneWait, 0.5],
			[CutsceneFixFrame, oPlayerCutscene, 0, 1, 0],
			[CutsceneWait, 1],
			[CutsceneFixFrame, oPlayerCutscene, 3, 1, 0],
			[CutsceneWait, 1],
			[CutsceneCreateTextBox, "MS - ark introduction 2"],
			[CutscenePlayMusic, bgmArkTheme, true],
			[CutsceneCheckTextBoxExists],
			[CutsceneMoveCharacter, npcArkCutscene, 0, -140, true, 1, 45],
			[CutsceneInstanceDestroy, npcArkCutscene],
			[CutsceneStopMusic],
			[CutsceneFixFrame, npcTinkIdleUp, 4, 1, 0],
			[CutsceneCreateTextBox, "MS - ark introduction 3"],
			[CutsceneCheckTextBoxExists],
			[CutsceneInstanceChange, npcTinkIdleUp, npcTinkFixing],
			[CutsceneChangeInstanceAndFixFrame, oPlayerCutscene, oPlayer, false, 0, 1, 0]
			];
			break;
		#endregion
		
		//Open Reception Giant Door
		#region
		case "MS - open the giant door":
			_tSceneInfo = [
			[CutsceneOpenReceptionGiantDoor],
			];
		break;
		#endregion
		
		//Training Room
		case "MS - punch anne training room":
			_tSceneInfo = [
			[CutsceneCreateTextBox, "MS - punch anne training room"],
			[CutsceneCheckTextBoxExists]
			];
		break;
		
		case "MS - punch anne training room 2":
			_tSceneInfo = [
			[CutsceneCreateTextBox, "MS - punch anne training room 2"],
			[CutsceneCheckTextBoxExists]
			];
		break;
		
		case "MS - punch anne training room 3":
			_tSceneInfo = [
			[CutsceneCreateTextBox, "MS - punch anne training room 3"],
			[CutsceneCheckTextBoxExists]
			];
		break;
		
		case "MS - punch anne training room 4":
			_tSceneInfo = [
			[CutsceneCreateTextBox, "MS - punch anne training room 4"],
			[CutsceneCheckTextBoxExists]
			];
		break;
		
		case "MS - punch anne training room 5":
			_tSceneInfo = [
			[CutsceneCreateTextBox, "MS - punch anne training room 5"],
			[CutsceneCheckTextBoxExists]
			];
		break;
		
		//Anne punches player after been annoyed sending them back to the medical ward
		case "MS - punch anne training room 6":
			_tSceneInfo = [
			[CutsceneCreateTextBox, "MS - punch anne training room 6"],
			[CutsceneCheckTextBoxExists]
			];
		break;
		
		//***BATTLE CUTSCENE***//
		case "MS - summon training bot":
			var enemySet = GetEnemySet("1 hologram");
			_tSceneInfo = [
			[CutsceneMoveToBattle, enemySet],
			];
		break;
		
		case "MS - summon training bot 2":
			var enemySet = GetEnemySet("4 hologram");
			_tSceneInfo = [
			[CutsceneMoveToBattle, enemySet],
			];
		break;
		
		default:
			_tSceneInfo = [
			[CutsceneInstanceCreate , 100, 100, "Game", npcEduard]
			]
			break;
			
	}
	
	return _tSceneInfo;
}