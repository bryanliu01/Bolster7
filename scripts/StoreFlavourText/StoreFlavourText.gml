// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StoreFlavourText(_enemyID){
	var flavour = -1;
	switch (_enemyID) {
		case "1 hologram":
			if (FirstTurn()) {
				flavour = "Training Bot floats into battle!";
			}
			else {
				flavour = "The smell of cheap metal fills the air.";
			}
		break;
			
		case "4 hologram":
			if (FirstTurn()) {
				flavour = "A fleet of robots enter the battlefield!";
			}
			else {
				flavour = "The robots are planning their mutiny. LISTEN TO THEM ROAR THEIR MUTINY TEST TEST TEST";
			}
			
			if ds_list_size(global.targets) == 1 {
				flavour = "The robot whirrs quietly alone.";
			}
		break;
	}
	return flavour;
}


function FirstTurn() {
	if (global.turnCount = 0) {
		return true;
	}
	else return false;
}