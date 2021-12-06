// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AttackButton(){
	global.targeting = true;
}

function CancelButton(){
	global.targeting = false;
	ds_list_clear(global.targets);
}