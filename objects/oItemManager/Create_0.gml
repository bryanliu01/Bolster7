#macro INVENTORYMENU 0
#macro STATSMENU 1
#macro DRIVESMENU 2

//Create Item Constructor Template
function CreateItem(_name, _desc, _useScript, _discardScript) constructor {
	name = _name;
	description = _desc;
	useScript = _useScript;
	discardScript = _discardScript;
}

objectScript = noone;

//Large parent item list that contains a list of other item structure
StoreAllItems();

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


