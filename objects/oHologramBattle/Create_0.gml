event_inherited();


base[HEALTH] = 60;

//The lower the speed the faster the enemy will attack
base[SPEED] = 50;
base[ATTACKPOINTS] = 5;
base[DEFENCEPOINTS] = 0;
base[ACCURACY] = 1;

current[HEALTH] = base[@ HEALTH];
current[SPEED] = base[@ SPEED];
current[ATTACKPOINTS] = base[@ ATTACKPOINTS];
current[DEFENCEPOINTS] = base[@ DEFENCEPOINTS];
current[ACCURACY] = base[@ ACCURACY];

//Use timing to allow bot to attack
energy = 0;
maxEnergy = irandom_range(current[SPEED] * 10 * 0.5, current[SPEED] * 10 * 2);
pause = false;

turnFinished = false;
selected = false;
attackWillHit = false;
incomingDamage = 0;

//** HEALTH BAR **//
healthBarWidth = 128;
healthBarHeight = sprite_get_height(sHealthBar);

drawTarget = false;

nameTitle = "Training Bot";

//Replace sprite with sequence name
unitSequence = layer_sequence_create("Sequences",x,y,seqHologramBattle);

//Put frame values of sprites in sequence here.
battleArriveStart = 0
battleArriveEnd = 104;

idleStart = 105;
idleEnd = 158;


hurtStart = 189;
hurtEnd = 193;

deathStart = 194;
deathEnd = 204;

attackAStart = 159;
attackAEnd = 188;

attackBStart = 159;
attackBEnd = 188;

attackCStart = 159;
attackCEnd = 188;
