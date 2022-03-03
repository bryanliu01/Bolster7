//This object stores all the information of various enemies
function CreateEnemy(_obj, _name, _desc, _hp, _spd, _xp, _gold,_moveset) constructor {
	obj = _obj;
	name = _name;
	description = _desc;
	hp = _hp;
	spd = _spd;
	xp = _xp;
	gold = _gold;
	movetset = _moveset;
	
	
}
StoreAllEnemies();

currentEnemyList = ds_list_create();