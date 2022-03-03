// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckEnoughCost(energy, sp, health){
	if (global.energyPoints >= energy && global.skillPoints >= sp && oPlayerBattle.current[@ HEALTH] > health) return true;
	else return false;
}