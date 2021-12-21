event_inherited();


base[HEALTH] = 22;
base[SKILLPOINTS] = 1;
base[SPEED] = 50;
base[ATTACKPOINTS] = 3;
base[DEFENCEPOINTS] = 0;
base[ACCURACY] = 1;

current[HEALTH] = base[@ HEALTH];
current[SKILLPOINTS] = base[@ SKILLPOINTS];
current[SPEED] = base[@ SPEED];
current[ATTACKPOINTS] = base[@ ATTACKPOINTS];
current[DEFENCEPOINTS] = base[@ DEFENCEPOINTS];
current[ACCURACY] = base[@ ACCURACY];

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

attackStart = 159;
attackEnd = 188;

hurtStart = 189;
hurtEnd = 193;

deathStart = 194;
deathEnd = 204;
