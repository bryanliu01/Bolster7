//An attack function to animate and process a punch in the overworld
function Punch(){
	
	//Set up animation when attack button is pressed
	if (sprite_index != sPlayerPunch) {
		sprite_index = sPlayerPunch;
		localFrame = 0;
		image_index = 0;
		
		//Clear hit list
		if (!ds_exists(hitByAttack, ds_type_list)) {
			hitByAttack = ds_list_create();
		}
		
		ds_list_clear(hitByAttack);
	}
	
	CheckHitDetection(sPlayerPunchHitBox);
	
	//Update sprite
	PlayerAnimateSprite();
	
	if animationEnd {
		state = PlayerStateFree
		animationEnd = false;
		override = false;
		if (instance_exists(oTransition)) image_speed = 0;
		
	}
}

//Check for hits
function CheckHitDetection(punchHitBox) {
	//Set the mask index of player to the punching hit box
	mask_index = punchHitBox;
	
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x, y, interactFrame, hitByAttackNow, false);
	
	if (hits > 0) {
		for (var i = 0; i < hits; i++) {
			//If the instance in each list has not yet been hit by the attack
			//Then attack is hit.
			var hitID = hitByAttackNow[| i];
			if (ds_list_find_index(hitByAttack, hitID) == -1 && i == 0) {
				ds_list_add(hitByAttack, hitID);
				
				//Here, we can use different scripts to execute and react to this punch
				with (hitID) {
					
					//If the interact entity
					if (punchScript != -1) CreateCutsceneObjectAndLoadID(punchScript);
					
				}
			}	
		}
	}
	//prevent memory leak by destroying unused data structures
	ds_list_destroy(hitByAttackNow);
	mask_index = sPlayer;
}