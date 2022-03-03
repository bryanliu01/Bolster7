//This function moves the player into the battle room
//oEventFlag will keep track of the enemies required to pull information out of during the battle
function CutsceneMoveToBattle(enemyArray){
	//Store the enemy list in the persistent object oEnemyInfo to transfer
	//into battle
	with (oEnemyInfo) {
		if (!ds_exists(currentEnemyList, ds_type_list)) {
			 currentEnemyList = ds_list_create();
		}
		ds_list_clear(currentEnemyList);
	}
	
	
	
	for (var i = 0; i < array_length(enemyArray); i++) {
		with oEnemyInfo {
			ds_list_add(currentEnemyList, enemyArray[i]);
		}
	}
	
	//Move to battle room
	if (!instance_exists(oTransition))
		RoomTransition(transType.fade, rBattleRoom);
	
	CutsceneEndAction();
}