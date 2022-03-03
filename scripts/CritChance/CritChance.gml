//This function multiplies the attack by a certain amount from a given crit chance
function CritChance(chance, multiplier){
	var target = irandom_range(1,100);
	if (target < chance) {
		damageIsCrit = true;
		return multiplier;
	}
	else return 1;
}