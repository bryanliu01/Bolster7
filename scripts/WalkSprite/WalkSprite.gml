//Assume that this script is used with an object that has a sprite assigned to it
function WalkSprite(dir) {
	
	var _CardinalDirection = dir;
	var _TotalFrames = sprite_get_number(sprite_index) / 4;
	image_index = (_CardinalDirection * _TotalFrames);
	localFrame += sprite_get_speed(sprite_index) / FRAME_RATE;
	if (localFrame >= _TotalFrames)
		{
			AnimationEnd = true;
			localFrame -= _TotalFrames;
		}
	else
		{
			AnimationEnd = false;
		}
}