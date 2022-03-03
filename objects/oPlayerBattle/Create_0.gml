event_inherited();


base[HEALTH] = 100;
base[SKILLPOINTS] = 50;
base[SPEED] = 50;
base[ATTACKPOINTS] = 5;
base[DEFENCEPOINTS] = 3;
base[ACCURACY] = 1;


current[HEALTH] = base[@ HEALTH];
// current[SKILLPOINTS] = base[@ SKILLPOINTS];
current[SPEED] = base[@ SPEED];
current[ATTACKPOINTS] = base[@ ATTACKPOINTS];
current[DEFENCEPOINTS] = base[@ DEFENCEPOINTS];
current[ACCURACY] = base[@ ACCURACY];

nameTitle = "Player";

unitSequence = layer_sequence_create("Sequences",x,y,seqPlayerBattle);

//**SEQUENCE VALUES**//
//Put frame values of sprites in sequence here.
idleStart = 0;
idleEnd = 23;

jumpStart = 24;
jumpEnd = 25;

basicAttackStart = 26;
basicAttackEnd = 55;

defendStart = 56;
defendEnd = 86;

hurtStart = 87;
hurtEnd = 110;

defendHurtStart = 111;
defendHurtEnd = 131;

deathStart = 132;
deathEnd = 199;

battleArriveStart = 200;
battleArriveEnd = 255;

singlePunchStart = 256;
singlePunchEnd = 267;

laserShotStart = 268;
laserShotEnd = 326;

enragedAttackStart = 327;
enragedAttackEnd = 371;

bombRainStart = 372;
bombRainEnd = 410;

//Initial Animation, Player arrives to battle
layer_sequence_headpos(unitSequence, battleArriveStart);

baseUI = layer_get_id("BaseUI");

allowInput = true;
alpha = 1;

hide = false;

//**HEALTH BAR**//
//Create Health Bar
healthBarWidth = 116;
healthBarHeight = 10;

//Place base health bar GUI in this position
baseHealthBarX = 8;
baseHealthBarY = 8;

//Place animated red health bar in offset position
healthBarOffSetX = 29 + baseHealthBarX;
healthBarOffSetY = 19 + baseHealthBarY;

//Health bar animation position code
//White opaque line traverses through health bar
//Leaves behind an after image when moving
whiteLinePosX = healthBarOffSetX; //This value will change as the white line moves
whiteLinePosY = healthBarOffSetY;

whiteLineHeight = healthBarHeight;
whiteLineWidth = 1;
endOfHealthBar = healthBarWidth + healthBarOffSetX;
alphaStart = 0.8;
fadeTime = 0.5 * room_speed;

waitTime = 0;
lineOffTime = 1 * room_speed;

//**SKILL POINTS**//
global.skillPoints = base[@ SKILLPOINTS];

//**SKILL BAR**//
skillBarOffSetX = healthBarOffSetX + 2;
skillBarOffSetY = healthBarOffSetY + 14;
skillBarWidth = 110;
skillBarHeight = 6;

//**GUI NUMBERS**//
healthTextPosX = baseHealthBarX + 160;
healthTextPosY = baseHealthBarY + 11;
stringWidth = 0;

skillTextPosX = baseHealthBarX + 160;
skillTextPosY = baseHealthBarY + 23;

//**ENERGY BAR**//
//Create Energy Bar
energyBarWidth = 120;
energyBarHeight = sprite_get_height(sEnergyBar);

currentEnergy = 0;

global.energyPoints = 0;
maxEnergyPoints = 3;
global.energyFull = false;

partitionWidth = energyBarWidth/maxEnergyPoints;

//Duration interval of blinking energy bar in ms
duration = 1200;


energyBarPosX = 24 + baseHealthBarX;
energyBarPosY = 44 + baseHealthBarX;

