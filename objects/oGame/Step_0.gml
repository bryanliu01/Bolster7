if (!instance_exists(oMusicManager)) instance_create_layer(0, 0, "Game", oMusicManager);
if (!instance_exists(oCamera) && !instance_exists(oCombatManager) && room != rBattleRoom) 
	instance_create_layer(0, 0, "Game", oCamera);
