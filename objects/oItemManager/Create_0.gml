#macro INVENTORYMENU 0
#macro STATSMENU 1
#macro DRIVESMENU 2

#macro BASIC 0
#macro SKILLS 1

//Create Item Constructor Template
function CreateItem(_name, _desc, _useScript, _discardScript) constructor {
	name = _name;
	description = _desc;
	useScript = _useScript;
	discardScript = _discardScript;
}

//Create Move Set
function CreateMove(_name, _energyCost, _skillCost, _healthCost, _info, _category, _sequenceFrame, _state) constructor {
	name = _name;
	energyCost = _energyCost;
	skillCost = _skillCost;
	healthCost = _healthCost;
	info = _info;
	
	//0 for basic attack category
	//1 for skills category
	category = _category;
	sequenceFrame = _sequenceFrame;
	state = _state;
}

objectScript = noone;

//Large parent item list that contains a list of other item structure
StoreAllItems();
StoreAllMoveSets();

//Create inventory

inv = array_create(0);
	
menuIsOpened = false;

optionLength = 0;

global.invLayer = 0;

down = 0;
up = 0;
markerPosition = 0;

maxItems = 9;
selectedItem = noone;

option[0, 0] = "INVENTORY";
option[0, 1] = "STATS";
option[0, 2] = ""; //Empty for now, introduce DRIVES later on

option[1, 0] = noone;

option[2, 0] = noone;

promptEnabled = false;
promptPos = 0;
prompt[0] = "Use";
prompt[1] = "Discard";

global.gold = 0;

basicMoveList = ds_list_create();
skillMoveList = ds_list_create();
//Create default move set for starting the game
ds_list_add(basicMoveList, global.moveSet.punch);
ds_list_add(basicMoveList, global.moveSet.doublePunch);

ds_list_add(skillMoveList, global.moveSet.bombRain);
ds_list_add(skillMoveList, global.moveSet.enragedAttack);
ds_list_add(skillMoveList, global.moveSet.laserShot);