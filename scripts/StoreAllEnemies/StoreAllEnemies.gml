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