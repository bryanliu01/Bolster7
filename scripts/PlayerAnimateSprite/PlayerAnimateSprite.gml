function PlayerAnimateSprite()
{	
	if (instance_exists(oPlayer)) {
		var _CardinalDirection = round(direction/90);
		var _TotalFrames = sprite_get_number(sprite_index) / 4;
		image_index = localFrame + (_CardinalDirection * _TotalFrames);
		localFrame += sprite_get_speed(sprite_index) / FRAME_RATE;
	
		//If animation would loop on next game step
		if (localFrame >= _TotalFrames)
			{
				animationEnd = true;
				localFrame -= _TotalFrames;
			}
		else
			{
				animationEnd = false;
			}
	}
}