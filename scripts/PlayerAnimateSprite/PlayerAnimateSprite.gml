function PlayerAnimateSprite()
{
	var _CardinalDirection = round(direction/90);
	var _TotalFrames = sprite_get_number(sprite_index) / 4;
	image_index = LocalFrame + (_CardinalDirection * _TotalFrames);
	LocalFrame += sprite_get_speed(sprite_index) / FRAME_RATE;
	
	//If animation would loop on next game step
	if (LocalFrame >= _TotalFrames)
		{
			AnimationEnd = true;
			LocalFrame -= _TotalFrames;
		}
	else
		{
			AnimationEnd = false;
		}
}