//Camera Setup
#macro CAMERA_WIDTH camera_get_view_width(view_camera[0]);
#macro CAMERA_HEIGHT camera_get_view_height(view_camera[0]);

#macro DISPLAY_SCALE_X display_get_gui_width()/CAMERA_WIDTH;
#macro DISPLAY_SCALE_Y display_get_gui_height()/CAMERA_HEIGHT;

//Statistics
#macro HEALTH 0
#macro SKILLPOINTS 1
#macro SPEED 2
#macro ATTACKPOINTS 3
#macro DEFENCEPOINTS 4
#macro ACCURACY 5

//States
#macro IDLE 0
#macro JUMP_FORWARD 1
#macro B_ATTACK 2
#macro SINGLE_PUNCH 8
#macro LASER 9
#macro ENRAGED_ATTACK 10
#macro BOMB 11
#macro DEFEND 3
#macro HURT 4
#macro DEFEND_HURT 5
#macro DEATH 6
#macro INTRO 7


state = INTRO;

base[HEALTH] = 10;
base[SKILLPOINTS] = 1;
base[SPEED] = 1;
base[ATTACKPOINTS] = irandom_range(ATTACKPOINTS, ATTACKPOINTS + 2);
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
damageIsCrit = false;

//** HEALTH BAR **//
healthBarWidth = 128;
healthBarHeight = sprite_get_height(sHealthBar);

drawTarget = false;

function DamageUnit(amount) {
	
	//damage dealt is equal to the raw amount mitigated by defence
	var damage = amount - current[@ DEFENCEPOINTS]; 
	if (damage < 0) {
		current[HEALTH] = current[@ HEALTH];
	
	} else {
		current[@ HEALTH] -= damage;
	}
	//More neat code down below
	//current[@ HEALTH] -= max(0, damage);
}