function StoreAllEnemies(){
	global.enemyList = {
		trainingBot : new CreateEnemy (
			oHologramBattle,
			"Training Bot",
			"A metallic bot that is massively produced for industrial training. Made of steel.",
			25,
			50,
			1,
			0,
			noone
			
		)
	}
}


//This function stores the database of all possible enemy combinations to be used when encountering.
//This also sets up flavour text in battle by using global.enemyID as set ID.
function GetEnemySet(setName) {
	global.enemyID = setName;
	var list = noone;
	switch (setName) {
		case "1 hologram":
			list = [global.enemyList.trainingBot];
		break;
		
		case "4 hologram":
			list = [global.enemyList.trainingBot,
					global.enemyList.trainingBot,
					global.enemyList.trainingBot,
					global.enemyList.trainingBot];
		break;
	}
	return list;
}