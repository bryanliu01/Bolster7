//This object stores all the information of various enemies
function CreateEnemy(_obj, _name, _desc, _xp, _gold) constructor {
	obj = _obj;
	name = _name;
	description = _desc;
	xp = _xp;
	gold = _gold;
	
	
}
StoreAllEnemies();

currentEnemyList = ds_list_create();

global.enemyID = noone;