DamageUnit(incomingDamage);

var inst = instance_create_layer(x + 32, y, "Text", oDamageNumber);
inst.damage = incomingDamage - current[@ DEFENCEPOINTS];
inst.crit = damageIsCrit;
