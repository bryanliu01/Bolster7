DamageUnit(incomingDamage);

var inst = instance_create_layer(x + 32, y, "Text", oDamageNumber);
// Unit was defending, display mitigated damage number
if (unitIsDefending) {
	inst.damage = round((incomingDamage - current[@ DEFENCEPOINTS]) * 0.5);
	inst.defended = true;
}

// Else display numbers as normal
else inst.damage = incomingDamage - current[@ DEFENCEPOINTS];


inst.crit = damageIsCrit;
