//Player state happens when transitioning between rooms
function PlayerStateTransition(){
	if (instance_exists(oTransition) && instance_exists(oPlayer)) {
		oPlayer.HSpeed = 0;
		oPlayer.VSpeed = 0;
		PlayerObjectCollision();
		
		
		if (instance_exists(oPlayer)) {
		var _CardinalDirection = round(direction/90);
		var _TotalFrames = sprite_get_number(sprite_index) / 4;
		image_index = localFrame + (_CardinalDirection * _TotalFrames);
		localFrame += sprite_get_speed(sprite_index) / FRAME_RATE;
	
		//If animation would loop on next game step
		if (localFrame >= _TotalFrames)
			{
				animationEnd = true;
				if (sprite_index != sPlayerPunch) {
					localFrame -= _TotalFrames;
				}
				else localFrame = _TotalFrames - 1;
				
			}
		else
			{
				animationEnd = false;
			}
	}
		
	}
}